-- Creando esquema recursos humanos
--DROP SCHEMA HR -> borrar schema
CREATE SCHEMA hrdbo
GO
--Asignando tablas a esquema creado
ALTER SCHEMA hrdbo
TRANSFER OBJECT :: dbo.Medico
GO
--Creando el esquema Cliente
CREATE SCHEMA clientedbo
GO
--Asignando Paciente al esquema cliente
ALTER SCHEMA clientedbo
TRANSFER OBJECT :: dbo.Paciente
GO