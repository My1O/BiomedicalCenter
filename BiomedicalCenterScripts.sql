--Crear tabla paciente
CREATE TABLE Paciente1
(
	IdPaciente int NOT NULL,
	Nombre Varchar (50) NOT NULL,
	Apellido Varchar (50) NULL,
	FechaNacimiento date NULL,
	Domicilio varchar(50) NULL,
	IdPais char(3) NOT NULL,
	Telefono varchar(30) NULL,
	Email varchar (30) NULL,
	Observacion varchar (1000) NULL,
	FechaAlta datetime NOT NULL,
	CONSTRAINT PK_IdPaciente PRIMARY KEY (IdPaciente)
)
-- Tabla Historia para historial del paciente
CREATE TABLE Historia
(
	IdHistoria int NOT NULL,
	FechaHistoria datetime NULL,
	Observacion varchar(2000) NULL,
	CONSTRAINT PK_IdHistoria PRIMARY KEY (IdHistoria)
)
GO