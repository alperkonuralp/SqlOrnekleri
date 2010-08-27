SELECT ProductID, ProductName,
	UnitPrice , UnitsInStock, 
	UnitPrice * UnitsInStock AS TotalPrice
FROM Products
WHERE UnitPrice * UnitsInStock > 1000

--ORDER BY UnitPrice * UnitsInStock DESC
ORDER BY TotalPrice DESC