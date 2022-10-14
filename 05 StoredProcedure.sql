USE BiomedicalCenter
GO
IF EXISTSs
(
	SELECT *
	FROM INFORMATION_SCHEMA ROUTINES 
	WHERE SPECIFIC_SCHEMA = N'dbo'
	AND SPECIFIC_NAME = N'usp_DELETEPais'
)
DROP PROCEDURE dbo.usp_DELETEPais
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
DROP PROCEDURE usp_GetFullPaisPacienteData
CREATE PROCEDURE usp_GetFullPaisPacienteData
AS
SELECT j.IdPais, j.PaisNombre, e.IdPaciente, e.Nombre
FROM Pais j
INNER JOIN clientedbo.Paciente e ON j.IdPais = e.IdPais
GO
EXEC usp_GetFullPaisPacienteData
--EXEC usp_DELETEPais 'ECU'
Select * from clientedbo.Paciente