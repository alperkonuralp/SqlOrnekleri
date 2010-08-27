SELECT Categories.CategoryID AS 'tr/td', Categories.CategoryName AS 'tr/td', 
	Products.ProductID AS 'tr/td', Products.ProductName AS 'tr/td'
FROM Categories 
INNER JOIN Products
ON Categories.CategoryID = Products.CategoryID
ORDER BY Categories.CategoryID, ProductID
FOR XML Path('tr'), ROOT('table')