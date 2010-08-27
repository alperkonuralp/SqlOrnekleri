SELECT Categories.CategoryID, CategoryName, 
	ProductID, ProductName
FROM Products INNER JOIN Categories
ON Products.CategoryID = Categories.CategoryID