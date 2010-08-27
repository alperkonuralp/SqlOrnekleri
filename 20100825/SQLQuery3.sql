WITH Iller AS (
	SELECT 68 AS Plaka, N'Aksaray' AS Ad
	UNION 
	SELECT 5, N'Amasya' 
	UNION 
	SELECT 7, N'Antalya'
	UNION 
	SELECT 75, N'Ardahan'
	UNION
	SELECT 8, N'Artvin'
	UNION 	
	SELECT 10, N'Balýkesir'
)
INSERT INTO Il
SELECT * FROM Iller

