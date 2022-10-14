/*
	SELECT * FROM clientedbo.Paciente
	EXEC ActualizaDatosPaciente 2,'003-12021985','Jeff','Cages','Barrios Santa Rosa','jcages007@ymail.com'
*/

CREATE PROC ActualizaDatosPaciente(
	@IdPaciente int,
	@DNI Varchar(50),
	@Nombre varchar(50),
	@Apellido varchar(50),
	@Domicilio varchar(100),
	@Email varchar(30)
	)
AS
IF EXISTS(SELECT * FROM clientedbo.Paciente
WHERE IdPaciente = @idPaciente)
UPDATE clientedbo.Paciente
SET
DNI = @DNI,
Nombre = @Nombre,
Apellido = @Apellido,
Domicilio = @Domicilio,
Email = @Email
WHERE IdPaciente = @IdPaciente
ELSE
print 'No existe registro en la base de datos'