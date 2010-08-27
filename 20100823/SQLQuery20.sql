SELECT *
FROM (
	SELECT ROW_NUMBER() OVER (ORDER BY OrderID) AS 'RowNumber',  *
	FROM Orders) AS T
WHERE T.RowNumber BETWEEN 101 AND 200