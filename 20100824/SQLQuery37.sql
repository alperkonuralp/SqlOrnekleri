-- 1997-01-01 ile 1997-01-31 arasýndaki satýþlarýn deðerini
-- Fatura bazýnda gösteriniz.

SELECT OrderID, CustomerID
INTO #a
FROM Orders
WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-31 23:59:59'

SELECT od.OrderID, SUM(Quantity * UnitPrice)
FROM [Order Details] AS od
INNER JOIN #a AS a
ON od.OrderID = a.OrderID
GROUP BY od.OrderID

SELECT c.*
FROM Customers AS c 
INNER JOIN #a AS a
ON c.CustomerID = a.CustomerID


DROP TABLE #a