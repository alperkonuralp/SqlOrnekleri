SELECT Categories.CategoryID, Categories.CategoryName, 
	Products.ProductID, Products.ProductName
FROM Categories 
INNER JOIN Products
ON Categories.CategoryID = Products.CategoryID
ORDER BY Categories.CategoryID, ProductID
FOR XML RAW('Category'), ROOT('ProductList')