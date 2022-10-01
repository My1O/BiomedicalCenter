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