USE p2g9;
GO


CREATE TRIGGER TRG_Bilhete_VerificaLotacao
ON Bilhete
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (
        SELECT 1
        FROM (
            -- Conta o total de bilhetes vendidos para os eventos afetados
            SELECT b.FK_ID_Evento, COUNT(*) as TotalBilhetes
            FROM Bilhete b
            WHERE b.FK_ID_Evento IN (SELECT FK_ID_Evento FROM inserted)
            GROUP BY b.FK_ID_Evento
        ) as Vendas
        INNER JOIN Eventos e ON Vendas.FK_ID_Evento = e.ID_Evento
        INNER JOIN Edificio ed ON e.FK_NomeEdificio = ed.Nome
        WHERE Vendas.TotalBilhetes > ed.Lotacao
    )
    BEGIN
        RAISERROR ('Ação cancelada: A lotação máxima do edifício para este evento foi excedida.', 16, 1);
        ROLLBACK TRANSACTION;
    END
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

    -- 2. Regra de Negócio: Impede choque de eventos (2 eventos no mesmo dia no mesmo edifício)
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

CREATE TRIGGER TRG_Bar_VerificaFuncionarioUnico
ON dbo.Bar
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Se o funcionário inserido/alterado já estiver alocado a OUTRO bar, dá erro
    IF EXISTS (
        SELECT 1 
        FROM inserted i
        INNER JOIN dbo.Bar b ON i.FK_ID_Funcionario = b.FK_ID_Funcionario
        WHERE i.ID_Bar <> b.ID_Bar -- Garante que não se está a comparar com ele próprio
    )
    BEGIN
        RAISERROR('Erro: Este funcionário já se encontra alocado a outro bar ativo!', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END
END;
GO