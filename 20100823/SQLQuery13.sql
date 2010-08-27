-- 1997 yýlý içinde aylýk ve satýcý bazýnda 
-- yapýlan satýþlarýn adetlerini gösteren 
-- sorguyu yazýnýz.

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