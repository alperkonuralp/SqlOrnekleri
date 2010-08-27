SELECT ROW_NUMBER() OVER( ORDER BY OrderID, ProductID),
	*
FROM [Order Details]