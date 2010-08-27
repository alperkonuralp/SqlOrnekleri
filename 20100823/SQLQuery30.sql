CREATE TABLE #Urun 
(
	UrunID INT,
	KategoriID INT,
	UrunAdi NVARCHAR(50),
)

CREATE TABLE #Kategori 
(
	KategoriID INT,
	KategoriAdi NVARCHAR(50),
)

INSERT INTO #Kategori VALUES 
(1, 'Kýrtasiye'),
(2, 'Gýda'),
(3, 'Temizlik')


INSERT INTO #Urun VALUES
(1, 1, 'Kalem'),
(2, 1, 'Silgi'),
(3, 2, 'Ekmek'),
(4, 2, 'Buðday'),
(5, 4, 'Kanepe')

SELECT * FROM #Kategori
SELECT * FROM #Urun


SELECT #Kategori.KategoriID, #Kategori.KategoriAdi,
	   #Urun.UrunID, #Urun.UrunAdi
FROM #Kategori INNER JOIN #Urun
ON #Kategori.KategoriID = #Urun.KategoriID


DROP TABLE #Kategori, #Urun 
