SELECT CategoryID, 
	AVG(UnitPrice) AS 'Avarage Price',
	SUM(UnitPrice * UnitsInStock) AS 'Total Price'
FROM dbo.Products
GROUP BY CategoryID