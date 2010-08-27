CREATE TABLE #t
(
	UrunKodu int,
	AlisFiyati Money,
	SatisFiyati Money);
	
INSERT INTO #t 
VALUES (1, 10, 12.5),
(2, 5, 7.5),
(3, 25, 32.5),
(4, 17, NULL),
(5, 34, NULL),
(6, NULL, NULL),
(7, NULL, NULL);

SELECT UrunKodu, COALESCE(SatisFiyati, AlisFiyati * 1.1, 0)
FROM #t;


DROP TABLE #t;