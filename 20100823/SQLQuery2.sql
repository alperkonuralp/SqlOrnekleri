SELECT OrderID, SUM(UnitPrice * Quantity), COUNT(*)
FROM [Order Details]
GROUP BY OrderID