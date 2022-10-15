CREATE TRIGGER NuevosPacientes ON clientedbo.Paciente
AFTER INSERT
AS

IF(SELECT Idpais FROM inserted)
= 'NIC'
insert into dbo.PacienteLog( IdPaciente,IdPais,FechaAlta )
SELECT FROM inserted
