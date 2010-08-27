SELECT MONTH(OrderDate) AS 'Month', 
	[1], [2], [3], [4], [5], [6], [7], [8], [9]
FROM Orders PIVOT (
	COUNT(EmployeeID)
	FOR EmployeeID IN ([1], [2], [3], [4], [5], [6], [7], [8], [9])
) AS pvt
WHERE YEAR(OrderDate) = 1997

