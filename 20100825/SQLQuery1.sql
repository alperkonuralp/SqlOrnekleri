CREATE TABLE Il
(
	PlakaKodu INT NOT NULL PRIMARY KEY,
	IlAdi NVARCHAR(20) NOT NULL
);
GO 
CREATE TABLE Ilce
(
	IlceKodu INT IDENTITY NOT NULL PRIMARY KEY,
	IlKodu INT NOT NULL,
	IlceAdi NVARCHAR(30),
	CONSTRAINT [FK_Il_Ilce] FOREIGN KEY (IlKodu)
	REFERENCES Il(PlakaKodu)
);
GO
