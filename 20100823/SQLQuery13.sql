-- 1997 y�l� i�inde ayl�k ve sat�c� baz�nda 
-- yap�lan sat��lar�n adetlerini g�steren 
-- sorguyu yaz�n�z.

SELECT YEAR(OrderDate) AS 'Year', 
	MONTH(OrderDate) AS 'Month', 
	EmployeeID, COUNT(*) AS 'OrderCount'
FROM Orders
GROUP BY GROUPING SETS (
		(),
		(EmployeeID),
		(YEAR(OrderDate), EmployeeID),
		(YEAR(OrderDate), MONTH(OrderDate)),
		(YEAR(OrderDate), MONTH(OrderDate), EmployeeID)
	)
ORDER BY YEAR(OrderDate), MONTH(OrderDate), EmployeeID