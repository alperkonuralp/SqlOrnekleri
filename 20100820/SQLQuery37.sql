SELECT ProductID, SUM(UnitPrice * Quantity * (1-Discount))
FROM [Order Details]
GROUP BY ProductID
ORDER BY ProductID