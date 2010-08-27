-- Order Details Tablosu ile Products Tablosunu birle�tirip,
-- OrderID, ProductID, ProductName, UnitPrice, Quantity, Price
-- Kolonlar�n� g�steren sorguyu yaz�n�z.

SELECT [Order Details].OrderID, Products.ProductID,
	Products.ProductName, [Order Details].UnitPrice,
	[Order Details].Quantity, 
	[Order Details].Quantity* [Order Details].UnitPrice AS Price
FROM [Order Details] INNER JOIN Products
ON [Order Details].ProductID = Products.ProductID