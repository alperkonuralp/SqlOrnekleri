INSERT INTO Ilce
OUTPUT	inserted.IlceKodu, inserted.IlKodu, 
		inserted.IlceAdi, inserted.Notlar 
INTO #A
SELECT PlakaKodu, IlAdi + N'(Merkez)', IlAdi + N' Ýli'
FROM Il