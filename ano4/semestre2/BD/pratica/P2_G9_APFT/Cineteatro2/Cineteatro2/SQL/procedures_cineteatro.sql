USE p2g9;
GO

CREATE PROCEDURE dbo.sp_AlterarBar
    @ID_Bar BIGINT,
    @Aberto BIT,
    @FK_ID_Funcionario BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.Bar
    SET Aberto = @Aberto,
        FK_ID_Funcionario = @FK_ID_Funcionario
    WHERE ID_Bar = @ID_Bar;
END;
GO



CREATE PROCEDURE dbo.sp_ComprarBilhete
    @Lugar VARCHAR(30),
    @ID_Evento BIGINT,
    @ID_Bilheteira BIGINT,
    @ID_Recibo BIGINT,
    @Data DATE
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Validar disponibilidade do lugar
    IF dbo.fn_ValidarDisponibilidadeBilhete(@ID_Evento, @Lugar) = 0
    BEGIN
        RAISERROR('Erro: O lugar especificado já se encontra ocupado para este evento.', 16, 1);
        RETURN;
    END

    -- 2. Gerar Código sequencial para o Bilhete
    DECLARE @NovoCodigo BIGINT;
    SELECT @NovoCodigo = ISNULL(MAX(Codigo), 0) + 1 
    FROM dbo.Bilhete;

    -- 3. Efetuar o INSERT (utilizando diretamente a data fornecida no parâmetro)
    INSERT INTO dbo.Bilhete (
        Codigo, 
        [Data], 
        Lugar, 
        FK_ID_Evento, 
        FK_ID_Bilheteira, 
        FK_ID_Recibo
    )
    VALUES (
        @NovoCodigo, 
        @Data, -- Parâmetro de input
        @Lugar, 
        @ID_Evento, 
        @ID_Bilheteira, 
        @ID_Recibo
    );
END;
GO


CREATE PROCEDURE dbo.sp_RemoverBilhete
    @Codigo BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM dbo.Bilhete WHERE Codigo = @Codigo)
    BEGIN
        RAISERROR('Erro: O bilhete especificado não foi encontrado.', 16, 1);
        RETURN;
    END

    DELETE FROM dbo.Bilhete WHERE Codigo = @Codigo;
END;
GO


CREATE PROCEDURE dbo.sp_RemoverEvento
    @ID_Evento BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM dbo.Eventos WHERE ID_Evento = @ID_Evento)
    BEGIN
        RAISERROR('Erro: O evento especificado não foi encontrado.', 16, 1);
        RETURN;
    END

    -- O SQL Server tentará apagar restrições de FK ativas.
    DELETE FROM dbo.Eventos WHERE ID_Evento = @ID_Evento;
END;
GO

CREATE PROCEDURE dbo.sp_AdicionarEvento
    @Nome VARCHAR(30),
    @Duracao TIME,
    @Data DATE,
    @Tipo VARCHAR(30),
    @FK_NomeEdificio VARCHAR(30)
AS
BEGIN
    SET NOCOUNT ON;

    -- Gera o ID do Evento automaticamente (sequencial)
    DECLARE @NovoID BIGINT;
    SELECT @NovoID = ISNULL(MAX(ID_Evento), 0) + 1 
    FROM dbo.Eventos;

    -- Efetua o INSERT na tabela Eventos
    INSERT INTO dbo.Eventos (
        ID_Evento,
        Nome,
        Duracao,
        [Data],
        Tipo,
        FK_NomeEdificio
    )
    VALUES (
        @NovoID,
        @Nome,
        @Duracao,
        @Data,
        @Tipo,
        @FK_NomeEdificio
    );
END;
GO

CREATE PROCEDURE dbo.sp_RegistarCompraBar
    @ID_Bar BIGINT,
    @CodigoProduto BIGINT,
    @Quantidade INT,
    @MetodoPagamento VARCHAR(30),
    @NIF_Cliente BIGINT = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Regra de Negócio: Impedir vendas se o bar estiver Fechado
    IF (SELECT Aberto FROM dbo.Bar WHERE ID_Bar = @ID_Bar) = 0
    BEGIN
        RAISERROR('Erro: Não é possível registar compras num bar que se encontra fechado!', 16, 1);
        RETURN;
    END;

    -- 2. Validar Quantidade
    IF @Quantidade <= 0
    BEGIN
        RAISERROR('Erro: A quantidade do produto deve ser pelo menos 1!', 16, 1);
        RETURN;
    END;

    -- 3. Tratar o NIF (Se o utilizador digitou um NIF, garantimos que ele existe na DB)
    IF @NIF_Cliente IS NOT NULL AND @NIF_Cliente > 0
    BEGIN
        -- Se o NIF não existir na tabela Cliente, criamos automaticamente para não dar erro de FK
        IF NOT EXISTS (SELECT 1 FROM dbo.Cliente WHERE FK_NIF = @NIF_Cliente)
        BEGIN
            IF NOT EXISTS (SELECT 1 FROM dbo.Pessoa WHERE NIF = @NIF_Cliente)
            BEGIN
                INSERT INTO dbo.Pessoa (NIF, Nome, Telefone, Morada)
                VALUES (@NIF_Cliente, 'Cliente Balcão', '900000000', 'Desconhecida');
            END;
            INSERT INTO dbo.Cliente (FK_NIF) VALUES (@NIF_Cliente);
        END;
    END
    ELSE
    BEGIN
        SET @NIF_Cliente = NULL; -- Se veio vazio ou 0, fica Nulo na base de dados
    END;

    -- 4. Gerar ID do Recibo automaticamente (Idêntico à lógica dos Bilhetes)
    DECLARE @NovoRecibo BIGINT;
    SELECT @NovoRecibo = ISNULL(MAX(ID_Recibo), 0) + 1 FROM dbo.Compra;

    -- 5. Inserir o cabeçalho da Venda
    INSERT INTO dbo.Compra (ID_Recibo, [Data], MetodoPagamento, FK_NIF_Cliente, FK_ID_Bar)
    VALUES (@NovoRecibo, CAST(GETDATE() AS DATE), @MetodoPagamento, @NIF_Cliente, @ID_Bar);

    -- 6. Inserir o produto vendido na tabela intermédia
    INSERT INTO dbo.Producto_Compra (FK_ID_Recibo, FK_CodigoProduto, Quantidade)
    VALUES (@NovoRecibo, @CodigoProduto, @Quantidade);
END;
GO

CREATE PROCEDURE dbo.sp_AdicionarFuncionario
    @NIF BIGINT,
    @Nome VARCHAR(30),
    @Telefone VARCHAR(30),
    @Morada VARCHAR(30),
    @Funcao VARCHAR(30),
    @Salario DECIMAL(10,2)
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Se a pessoa ainda não existir na DB inserimos primeiro na Pessoa
    IF NOT EXISTS (SELECT 1 FROM dbo.Pessoa WHERE NIF = @NIF)
    BEGIN
        INSERT INTO dbo.Pessoa (NIF, Nome, Telefone, Morada)
        VALUES (@NIF, @Nome, @Telefone, @Morada);
    END;

    -- 2. Gerar o próximo ID_Funcionario automaticamente
    DECLARE @NovoID BIGINT;
    SELECT @NovoID = ISNULL(MAX(ID_Funcionario), 0) + 1 FROM dbo.Funcionario;

    -- 3. Inserir na tabela Funcionario
    INSERT INTO dbo.Funcionario (ID_Funcionario, Funcao, Salario, FK_NIF)
    VALUES (@NovoID, @Funcao, @Salario, @NIF);
END;
GO

CREATE PROCEDURE dbo.sp_RemoverFuncionario
    @ID_Funcionario BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- Remove apenas da tabela funcionário, mantém o registo histórico em Pessoa
    DELETE FROM dbo.Funcionario 
    WHERE ID_Funcionario = @ID_Funcionario;
END;
GO