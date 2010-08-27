SELECT *
FROM [Order Details]
INNER JOIN Products
ON [Order Details].ProductID = Products.ProductID
WHERE OrderID = 10262