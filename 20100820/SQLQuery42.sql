SELECT ProductID, SUM(UnitPrice * Quantity * (1-Discount)) AS Price
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(UnitPrice * Quantity * (1-Discount)) > 10000
ORDER BY Price DESC