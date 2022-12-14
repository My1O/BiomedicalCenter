
CREATE PROC usp_HistoriaPaciente(
		@IdPaciente int)
AS
BEGIN
IF EXISTS(
				SELECT *
				FROM clientedbo.Paciente pa
				INNER JOIN HistoriaPaciente HP
				ON pa.IdPaciente = HP.IdPaciente
				INNER JOIN Historia H
				ON H.IdHistoria = HP.IdHistoria
				INNER JOIN MedicoEspecialidad ME
				ON ME.IdMedico = HP.IdMedico
				INNER JOIN hrdbo.Medico M
				ON M.IdMedico = HP.IdMedico
				WHERE pa.IdPaciente = @IdPaciente
		)
	SELECT		 pa.IdPaciente, pa.DNI, pa.Nombre, pa.Apellido,
				pa.FechaNacimiento,pa.IdPais, HP.IdHistoria, H.FechaHistoria, ME.IdMedico,ME.IdEspecialidad,
				ME.Descripcion, M.Nombre, M.Apellido FROM clientedbo.Paciente pa
	INNER JOIN HistoriaPaciente HP
	ON pa.IdPaciente = HP.IdPaciente
	INNER JOIN Historia H
	ON H.IdHistoria = HP.IdHistoria
	INNER JOIN MedicoEspecialidad ME
	ON ME.IdMedico = HP.IdMedico
	INNER JOIN hrdbo.Medico M
	ON M.IdMedico = HP.IdMedico
	WHERE pa.IdPaciente = @IdPaciente
ELSE
	PRINT 'No existe historia clinica para el paciente ingresado'
END

-- EXEC usp_HistoriaPaciente 4