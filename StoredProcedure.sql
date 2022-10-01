USE BiomedicalCenter
IF EXISTS
(
	SELECT *
	FROM INFORMATION_SCHEMA ROUTINES
	WHERE SPECIFIC_SCHEMA = N'dbo.Pais'
	AND SPECIFIC_NAME = N'usp_DELETEPais'
)
DROP PROCEDURE dbo.usp_DELETEJob
GO

CREATE PROCEDURE dbo.usp_DELETEPais
@IdPais char
AS
IF EXISTS (SELECT 1 FROM dbo.Pais WHERE IdPais = @IdPais)
BEGIN
RAISEERROR ('No puede ser eleminado. El pais tiene paciente relacionado', --Message text
             16, --severity
			 1 --state
);
END
ELSE
BEGIN
DELETE FROM dbo.Pais WHERE IdPais = @IdPais;
END
GO
--Procedimiento para cargar info del Pais
CREATE PROCEDURE usp_GetFullPaisData
AS
SELECT j.IdPais, j.PaisNombre
FROM Pais j
GO
EXEC usp_GetFullPaisData
EXEC usp_DELETEPais 'ECU'
Select * from pais