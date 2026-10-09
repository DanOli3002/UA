USE p2g9;
GO

CREATE FUNCTION dbo.fn_ValidarDisponibilidadeBilhete 
(
    @ID_Evento BIGINT,
    @Lugar VARCHAR(30)
)
RETURNS BIT
AS
BEGIN
    DECLARE @Disponivel BIT = 1;

    -- Verifica se já existe um bilhete para o mesmo evento e o mesmo lugar
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