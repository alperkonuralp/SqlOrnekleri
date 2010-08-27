SELECT *
FROM Categories 
INNER JOIN Products
ON Categories.CategoryID = Products.CategoryID
ORDER BY Categories.CategoryID, ProductID
FOR XML AUTO, ROOT('ProductList')