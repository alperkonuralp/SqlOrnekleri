SELECT SUM(UnitPrice * Quantity * (1-Discount))
FROM [Order Details]
WHERE ProductID = 1

SELECT SUM(UnitPrice * Quantity * (1-Discount))
FROM [Order Details]
WHERE ProductID = 2