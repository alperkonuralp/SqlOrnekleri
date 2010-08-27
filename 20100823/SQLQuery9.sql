SELECT OrderID, ProductID,
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
GROUP BY OrderID, ProductID WITH ROLLUP
ORDER BY OrderID, ProductID