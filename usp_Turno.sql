
CREATE PROC usp_Turno(
			@IdTurno Int,
			@Estado tinyInt,
			@Observacion varchar(100))
AS
SET NOCOUNT ON
IF EXISTS(SELECT * FROM Turno WHERE IdTurno = @IdTurno)
BEGIN

		UPDATE Turno 
		SET Estado = @Estado, Observacion = @Observacion	
		WHERE IdTurno = @IdTurno
END
ELSE
SELECT 0 AS Resultado
/*
EXEC usp_Turno 9,3, 'Paciente se dio de alta por mejoria en su estado de salud'
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM TurnoEstado
*/