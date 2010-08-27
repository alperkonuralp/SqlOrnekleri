CREATE TABLE #Ara2
(	
	[Yýl] INT,
	[Ocak] MONEY, 
	[Þubat] MONEY, 
	[Mart] MONEY, 
	[Nisan] MONEY, 
	[Mayýs] MONEY, 
	[Haziran] MONEY, 
	[Temmuz] MONEY, 
	[Aðustos] MONEY, 
	[Eylül] MONEY, 
	[Ekim] MONEY, 
	[Kasým] MONEY, 
	[Aralýk] MONEY
)

INSERT INTO #Ara2 VALUES 
(2008,	10000,	20000,	25000,	30000,	32000,	33000,	34000,	37000,	41000,	54000,	48000,	38000),
(2009,	35000,	37000,	33000,	30000,	34000,	38000,	41000,	42000,	42500,	43000,	45000,	40000),
(2010,	37000,	37500,	38000,	37000,	35000,	38000,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL)


SELECT *
FROM #Ara2


SELECT [Yýl], [Ay], [Toplam]
FROM #Ara2 UNPIVOT (
	[Toplam]
	FOR [Ay] IN ([Ocak] , [Þubat] , [Mart] , [Nisan] , [Mayýs] , 
		[Haziran] , [Temmuz] , [Aðustos] , [Eylül] , [Ekim] , 
		[Kasým] , [Aralýk])
) AS pvt



DROP TABLE #Ara2