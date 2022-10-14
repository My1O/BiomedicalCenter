IF OBJECT_ID (N'dbo.Pais.') IS NOT NULL
DROP FUNCTION dbo.ufnGetFullPaisPacienteData
GO

CREATE FUNCTION dbo.ufnGetFullPaisPacienteData()
RETURNS TABLE
AS RETURN
(
	SELECT j.IdPais, j.PaisNombre, e.IdPaciente, e.Nombre
    FROM Pais j
    INNER JOIN clientedbo.Paciente e ON j.IdPais = e.IdPais
)
GO

SELECT * FROM dbo.ufnGetFullPaisPacienteData()

-- Funcion Escalar

IF OBJECT_ID(N'dbo.CalculateDivision') IS NOT NULL
	DROP FUNCTION dbo.CalculateDivision
GO

CREATE FUNCTION dbo.CalculateDivision (@num1 INT, @num2 INT)
RETURNS DECIMAL (10,2)
AS
BEGIN
	RETURN CAST(@num1 AS DECIMAL) / CAST (@num2 AS DECIMAL);
END
GO

SELECT dbo.CalculateDivision(25,10)
