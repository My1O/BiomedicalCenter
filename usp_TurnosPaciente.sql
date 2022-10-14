-- SELECT * FROM Turno
-- SELECT * FROM MedicoEspecialidad
-- INSERT INTO MedicoEspecialidad(IdMedico, IdEspecialidad, Descripcion)
-- VALUES(3,2,'Medico de planta')

CREATE PROC Ver_Turnos_Pacientes(
			@IdPaciente int
			)
AS
SET NOCOUNT ON
BEGIN
SELECT P.IdPaciente, P.DNI , P.Nombre, P.Apellido, P.FechaNacimiento, T.FechaTurno, T.Estado, T.Observacion, ME.IdMedico, ME.Descripcion FROM clientedbo.Paciente P
INNER JOIN TurnoPaciente TP
ON TP.IdPaciente = P.IdPaciente
INNER JOIN Turno T
ON T.IdTurno = TP.IdTurno
AND TP.IdPaciente = P.IdPaciente
INNER JOIN MedicoEspecialidad ME
ON ME.IdMedico = TP.IdMedico
WHERE P.IdPaciente = @IdPaciente
END
-- Exec Ver_Turnos_Pacientes 2