SELECT OrderID, ProductID,
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
GROUP BY OrderID, ProductID
ORDER BY OrderID, ProductID

SELECT OrderID,
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
GROUP BY OrderID
ORDER BY OrderID

SELECT 
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
