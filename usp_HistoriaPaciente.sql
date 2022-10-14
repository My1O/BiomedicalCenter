
CREATE PROC usp_HistoriaPaciente(
		@IdPaciente int)
AS
BEGIN
SELECT * FROM clientedbo.Paciente pa
INNER JOIN HistoriaPaciente HP
ON pa.IdPaciente = HP.IdPaciente
INNER JOIN Historia H
ON H.IdHistoria = HP.IdHistoria
INNER JOIN MedicoEspecialidad ME
ON ME.IdMedico = HP.IdMedico
INNER JOIN hrdbo.Medico M
ON M.IdMedico = HP.IdMedico
WHERE pa.IdPaciente = @IdPaciente
END

--EXEC usp_HistoriaPaciente 4