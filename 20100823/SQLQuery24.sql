CREATE TABLE #Ara
(
	[Year] INT,
	[Month] INT,
	[Price] MONEY
); 
INSERT INTO #Ara VALUES
(2008, 1 , 10000),
(2008, 2 , 20000),
(2008, 3 , 25000),
(2008, 4 , 30000),
(2008, 5 , 32000),
(2008, 6 , 33000),
(2008, 7 , 34000),
(2008, 8 , 37000),
(2008, 9 , 41000),
(2008, 10 , 54000),
(2008, 11 , 48000),
(2008, 12 , 38000),
(2009, 1 , 35000),
(2009, 2 , 37000),
(2009, 3 , 33000),
(2009, 4 , 30000),
(2009, 5 , 34000),
(2009, 6 , 38000),
(2009, 7 , 41000),
(2009, 8 , 42000),
(2009, 9 , 42500),
(2009, 10 , 43000),
(2009, 11 , 45000),
(2009, 12 , 40000),
(2010, 1 , 37000),
(2010, 2 , 37500),
(2010, 3 , 38000),
(2010, 4 , 37000),
(2010, 5 , 35000),
(2010, 6 , 38000)

SELECT *
FROM #Ara

SELECT [Year], [1], [2], [3], [4], [5], [6], [7], 
		[8], [9], [10], [11], [12]
		
FROM #Ara PIVOT (
	SUM([Price])
	FOR [Month] IN ([1], [2], [3], [4], [5], [6], [7], 
		[8], [9], [10], [11], [12])
) AS pvt

DROP TABLE #Ara