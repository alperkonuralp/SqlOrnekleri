SELECT *
INTO #A
FROM Products 
WHERE CategoryID IN (1,3,5)

SELECT *
FROM #A

TRUNCATE TABLE #A

SELECT *
FROM #A

DROP TABLE #A