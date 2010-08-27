-- 01-01-1997 ile 31-01-1997 tarihleri arasýnda yapýlan 
-- satýþlarýn fatura bazýnda fiyatlarýný gösteriniz.

WITH Ord AS ( 
             SELECT OrderID 
             FROM Orders AS o 
             WHERE o.OrderDate BETWEEN '1997-01-01' 
                               AND '1997-01-31')

SELECT od.OrderID, SUM(Quantity * UnitPrice)
FROM [Order Details] AS od
INNER JOIN Ord
ON od.OrderID = Ord.OrderID
GROUP BY od.OrderID