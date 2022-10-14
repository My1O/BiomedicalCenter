
CREATE PROC EspecialidadesMedicas
AS
BEGIN
IF EXISTS(SELECT * FROM Especialidad)
SELECT * FROM Especialidad
ELSE
PRINT 'No hay especialidades registradas en la base de datos'
END

-- EXEC EspecialidadesMedicas