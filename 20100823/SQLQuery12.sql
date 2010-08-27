-- 1997 yýlý içinde aylýk ve satýcý bazýnda 
-- yapýlan satýþlarýn adetlerini gösteren 
-- sorguyu yazýnýz.

SELECT YEAR(OrderDate) AS 'Year', 
	MONTH(OrderDate) AS 'Month', 
	EmployeeID, COUNT(*) AS 'OrderCount'
FROM Orders
--WHERE OrderDate BETWEEN '1997-01-01' AND 
--	'1997-12-31 23:59:59'
--WHERE YEAR(OrderDate) = 1997
GROUP BY YEAR(OrderDate), MONTH(OrderDate), EmployeeID WITH CUBE
ORDER BY YEAR(OrderDate), MONTH(OrderDate), EmployeeID