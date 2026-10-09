CREATE FUNCTION dbo.fn_ValidarDisponibilidadeBilhete 
(
    @ID_Evento BIGINT,
    @Lugar VARCHAR(30)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Disponivel BIT = 1;

    -- Verifica se j・existe um bilhete para o mesmo evento e o mesmo lugar
    IF EXISTS (
        SELECT 1 
        FROM dbo.Bilhete 
        WHERE FK_ID_Evento = @ID_Evento 
          AND Lugar = @Lugar
    )
    BEGIN
        SET @Disponivel = 0; -- Ocupado
    END

    RETURN @Disponivel;
END;
GO

CREATE PROCEDURE dbo.sp_ComprarBilhete
    @Lugar VARCHAR(30),
    @ID_Evento BIGINT,
    @ID_Bilheteira BIGINT,
    @ID_Recibo BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Validar se o lugar está livre com recurso à Function
    IF dbo.fn_ValidarDisponibilidadeBilhete(@ID_Evento, @Lugar) = 0
    BEGIN
        -- Se devolver 0, aborta o processo de imediato lançando um erro
        RAISERROR('Erro: O lugar especificado já se encontra ocupado para este evento.', 16, 1);
        RETURN;
    END

    -- 2. Obter automaticamente a Data do Evento para evitar input do utilizador
    DECLARE @DataDoEvento DATE;
    SELECT @DataDoEvento = [Data] 
    FROM dbo.Eventos 
    WHERE ID_Evento = @ID_Evento;

    -- 3. Gerar novo Código para o Bilhete inserido (caso não possua IDENTITY)
    DECLARE @NovoCodigo BIGINT;
    SELECT @NovoCodigo = ISNULL(MAX(Codigo), 0) + 1 
    FROM dbo.Bilhete;

    -- 4. Efetuar o INSERT seguro com a data obtida no passo 2
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
        @DataDoEvento, 
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

    -- Verifica se o bilhete realmente existe antes de tentar apagar
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

    -- Verifica se o evento existe
    IF NOT EXISTS (SELECT 1 FROM dbo.Eventos WHERE ID_Evento = @ID_Evento)
    BEGIN
        RAISERROR('Erro: O evento especificado não foi encontrado.', 16, 1);
        RETURN;
    END

    -- O SQL vai tentar o DELETE. Se houver chaves estrangeiras (bilhetes associados), o próprio SQL barra a operação
    DELETE FROM dbo.Eventos WHERE ID_Evento = @ID_Evento;
END;
GO

ALTER PROCEDURE dbo.sp_ComprarBilhete
    @Lugar VARCHAR(30),
    @ID_Evento BIGINT,
    @ID_Bilheteira BIGINT,
    @ID_Recibo BIGINT
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Validar disponibilidade do lugar
    IF dbo.fn_ValidarDisponibilidadeBilhete(@ID_Evento, @Lugar) = 0
    BEGIN
        RAISERROR('Erro: O lugar especificado já se encontra ocupado para este evento.', 16, 1);
        RETURN;
    END

    -- 2. BUSCA AUTOMÁTICA: Vamos buscar a data correta diretamente à tabela Eventos
    DECLARE @DataDoEvento DATE;
    SELECT @DataDoEvento = [Data] 
    FROM dbo.Eventos 
    WHERE ID_Evento = @ID_Evento;

    -- 3. Gerar novo Código para o Bilhete
    DECLARE @NovoCodigo BIGINT;
    SELECT @NovoCodigo = ISNULL(MAX(Codigo), 0) + 1 
    FROM dbo.Bilhete;

    -- 4. Efetuar o INSERT (usando a data que acabámos de descobrir)
    INSERT INTO dbo.Bilhete (
        Codigo, 
        [Data], -- A coluna continua na DB intacta!
        Lugar, 
        FK_ID_Evento, 
        FK_ID_Bilheteira, 
        FK_ID_Recibo
    )
    VALUES (
        @NovoCodigo, 
        @DataDoEvento, -- Gravado de forma segura e automática
        @Lugar, 
        @ID_Evento, 
        @ID_Bilheteira, 
        @ID_Recibo
    );
END;
GO

CREATE TRIGGER TRG_Eventos_ValidacoesData
ON Eventos
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- 1. Regra de Negócio: Impede que o evento seja agendado para o passado
    IF EXISTS (
        SELECT 1 
        FROM inserted 
        WHERE [Data] < CAST(GETDATE() AS DATE)
    )
    BEGIN
        RAISERROR ('Ação cancelada: Não é possível agendar ou modificar um evento para uma data passada.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END

    -- 2. Regra de Negócio: Impede choque de eventos (2 eventos no mesmo dia e no mesmo edifício)
    IF EXISTS (
        SELECT 1
        FROM inserted i
        INNER JOIN Eventos e 
            ON i.[Data] = e.[Data] 
            AND i.FK_NomeEdificio = e.FK_NomeEdificio
        WHERE i.ID_Evento <> e.ID_Evento -- Ignora o próprio evento em caso de UPDATE
    )
    BEGIN
        RAISERROR ('Ação cancelada: Já existe um evento agendado para este edifício neste dia. O espaço está ocupado.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO
