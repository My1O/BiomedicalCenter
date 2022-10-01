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
-- Tabla Historia - Paciente
CREATE TABLE HistoriaPaciente
(
	IdHistoria int NOT NULL ,
	IdPaciente int NOT NULL ,
	IdMedico int NOT NULL ,
	Constraint PK_IdHistoriaPaciente PRIMARY KEY(IdHistoria, IdPaciente, IdMedico)
)
GO
-- Tabla Turno
CREATE TABLE Turno
(
	IdTurno int NOT NULL Identity,
	FechaTurno datetime Null,
	Estado smallint Null,
	Observacion varchar(300) Null,
	CONSTRAINT PK_IdTurno PRIMARY KEY (IdTurno)
)
GO
-- Tabla Turno Paciente
CREATE TABLE TurnoPaciente
(
	IdTurno int NOT NULL,
	IdPaciente int NOT NULL,
	IdMedico int NOT NULL,
	CONSTRAINT PK_TurnoPaciente PRIMARY KEY(IdTurno, IdPaciente, IdMedico)
)
GO
-- Tabla PAIS
CREATE TABLE Pais
(
	IdPais char(3) NOT NULL,
	PaisNombre varchar(30) NULL,
	CONSTRAINT PK_IdPais PRIMARY KEY (IdPais)
)
GO
--Tabla especialidad
CREATE TABLE Especialidad
(
	IdEspecialidad int IDENTITY (1,1) NOT NULL,
	Especialidad varchar(30) NULL,
	CONSTRAINT PK_IdEspecialidad PRIMARY KEY(IdEspecialidad)
)
GO
-- Tabla Medico
CREATE TABLE Medico
(
	IdMedico int Identity (1,1) NOT NULL,
	Nombre varchar(50) NULL,
	Apellido varchar(50) NULL,
	CONSTRAINT PK_IdMedico PRIMARY KEY (IdMedico)
)
GO
--Tabla Medico especialidad
CREATE TABLE MedicoEspecialidad
(
	IdMedico int NOT NULL,
	IdEspecialidad int NOT NULL,
	Descripcion varchar(50) null,
	CONSTRAINT PK_MedicoEspecialidad PRIMARY KEY(IdMedico,IdEspecialidad)
	--CONSTRAINT FK_Especialidad_IdEspecialidad FOREIGN KEY (IdEspecialidad) REFERENCES MedicoEspecialidad(IdMedico)
)
GO
--Tabla pago
CREATE TABLE Pago
(
	IdPago int Identity (1,1) NOT NULL,
	Concepto tinyint not null,
	Fecha datetime not null,
	Monto money not null,
	Estado tinyint null,
	Observacion varchar (1000)
	CONSTRAINT PK_IdPago PRIMARY KEY(IdPago)
)
GO
--Tabla pago paciente
CREATE TABLE PagoPaciente
(
	IdPago int NOT NULL,
	IdPaciente int NOT NULL,
	IdTurno int NOT NULL,
	 Primary Key(IdPago, IdPaciente, IdTurno)
)
GO
-- tabla Concepto
CREATE TABLE Concepto
(
	IdConcepto tinyint IDENTITY (1,1) NOT NULL,
	Descripcion varchar(100),
	CONSTRAINT PK_IdConcepto PRIMARY KEY(IdConcepto)
)
GO
USE BiomedicalCenter
--Drop table TurnoEstado
-- Tabla Estado
Create Table TurnoEstado
(
	IdEstado int NOT NULL,
	Descripcion varchar(50)
	Constraint PK_IdEstado PRIMARY KEY(IdEstado)
)
GO

--Creando tipo de datos medico y paciente
-- Create type medico from int not null
-- Create type paciente from int not null

--Agregar UNIQUE a la tabla clientedbo.Paciente en la columan nombre para evitar duplicados
ALTER TABLE clientedbo.Paciente ADD CONSTRAINT UK_Paciente_Name UNIQUE(Nombre)
GO
SELECT * FROM clientedbo.Paciente
DELETE FROM clientedbo.Paciente WHERE IdPaciente = 4