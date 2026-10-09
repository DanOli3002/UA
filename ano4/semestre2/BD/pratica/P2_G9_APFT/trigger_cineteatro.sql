use Cineteatro2;
GO

CREATE TRIGGER TRG_Bilhete_VerificaLotacao
ON Bilhete
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    -- Verifica se ocorreu alguma quebra de regra
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
        WHERE Vendas.TotalBilhetes > ed.Lotacao -- Compara os bilhetes com a lotação
    )
    BEGIN
        -- Aborta a operação se o número de bilhetes for maior que a lotação
        RAISERROR ('Ação cancelada: A lotação máxima do edifício para este evento foi excedida.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;
GO