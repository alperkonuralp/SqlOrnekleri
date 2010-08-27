SELECT ProductID, SUM(UnitPrice * Quantity) AS 'Price',
	COUNT(*) AS 'Order Count', 
	MAX(UnitPrice*Quantity) AS 'Max Order Price',
	MIN(UnitPrice*Quantity) AS 'Min Order Price',
	AVG(UnitPrice*Quantity) AS 'Avarage Order Price',
	AVG(UnitPrice) AS 'Avarage Product Price',
	SUM(UnitPrice * Quantity) / SUM(Quantity) AS 'Aðýrlýklý Ortalama'
FROM [Order Details]
GROUP BY ProductID
ORDER BY ProductID