CREATE FUNCTION ListaPaises()
RETURNS @Paises TABLE(IdPais Char(3),Pais varchar(50))
AS
BEGIN
		INSERT INTO @Paises VALUES('NIC','Nicaragua')
		INSERT INTO @Paises VALUES('SVL','EL SALVADOR')
		INSERT INTO @Paises VALUES('USA','ESTADOS UNIDOS')
		INSERT INTO @Paises VALUES('CAN','CANADA')
Return
END

/*
	SELECT * FROM dbo.ListaPaises()
*/