-- Agregando datos en la tabla Pais
Insert into Pais(IdPais, PaisNombre)
Values('NIC', 'Nicaragua')
GO
Insert into Pais(IdPais, PaisNombre)
Values('USA', 'Estados Unidos')
GO
Insert into Pais(IdPais, PaisNombre)
Values('CAN', 'Canada')
GO
INSERT INTO Pais(IdPais, PaisNombre)
VALUES ('CHL','Chile')
GO
INSERT INTO Pais(IdPais, PaisNombre)
VALUES('ECU','Ecuador')
GO
INSERT INTO Pais(IdPais, PaisNombre)
VALUES('SLV','El Salvador')
GO
INSERT INTO Pais(IdPais, PaisNombre)
VALUES('FRA', 'Francia')
GO
--Agregando datos en la tabla Paciente

Select * from Pais
Delete from Pais where IdPais = 'CA'

--Insertar datos en la tabla clientedbo.Paciente
INSERT INTO clientedbo.Paciente(Nombre, Apellido, IdPais)
Values('Jeff', 'Dahmer', 'NIC')
GO
INSERT INTO clientedbo.Paciente(Nombre, IdPais)
Values('Nicholas', 'FRA')
GO
--Borramos los campos creados anteriormente
DELETE FROM clientedbo.Paciente
Select * from clientedbo.Paciente
--Identity sigue su marcha e inicia conteo desde el valor anterior
--Reiniciamos Identity a 0
dbcc CHECKIDENT ('clientedbo.Paciente', reseed ,0)
--Agregamos nuevos valores para comprobar que Identity inicia conteo en desde 0
INSERT INTO clientedbo.Paciente(Nombre, Apellido, IdPais)
VALUES('Jeff','Bezos', 'USA')
GO
INSERT INTO clientedbo.Paciente(Nombre, Apellido, IdPais)
VALUES('Nicholas', 'Cage', 'SLV')
GO
INSERT INTO clientedbo.Paciente(Nombre, Apellido,FechaNacimiento,IdPais)
VALUES('Elon','Musk', '2000-11-11','ECU')
GO
INSERT INTO clientedbo.Paciente(Nombre,IdPais)
VALUES('Lian', 'ECU')
GO
INSERT INTO clientedbo.Paciente(Nombre,IdPais)
VALUES('Rex', 'NIC')
GO
select * from clientedbo.Paciente

select * from Pais