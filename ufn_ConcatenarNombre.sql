
CREATE FUNCTION ConcatenarNombre(
	@Nombre varchar(50),
	@Apellido varchar(40)
)
RETURNS VARCHAR(100)
AS
BEGIN
		Declare @Resultado varchar(100)
		SET @Resultado = @Nombre + ', '+@Apellido
		Return @Resultado
END
/*
SELECT dbo.ConcatenarNombre ('Alize', 'Myers')
*/



ALTER FUNCTION NombrePais(
		@IdPaciente int
		)
		RETURNS VARCHAR(100)
AS
BEGIN
		declare @pais varchar(50)
		SET @pais = (
					SELECT Ps.PaisNombre FROM clientedbo.Paciente PA
					Inner JOIN Pais Ps
					ON Ps.IdPais = Pa.IdPais
					WHERE IdPaciente = @IdPaciente
		) 
		Return @pais 
END
/*
 SELECT * FROM Pais
 SELECT * FROM clientedbo.Paciente
 SELECT dbo.NombrePais(9)
*/





