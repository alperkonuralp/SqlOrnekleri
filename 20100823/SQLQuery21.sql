WITH Veri  AS (
	SELECT EmployeeID, 
		MONTH(OrderDate) AS 'Month', 
		COUNT(*) AS 'OrderCount'
	FROM Orders
	WHERE YEAR(OrderDate) = 1997
	GROUP BY MONTH(OrderDate),EmployeeID
	
)
SELECT Month, [1], [2], [3], [4], [5], [6], [7], [8], [9]
FROM Veri PIVOT (
	SUM(OrderCount)
	FOR EmployeeID IN ([1], [2], [3], [4], [5], [6], [7], [8], [9])
) AS pvt