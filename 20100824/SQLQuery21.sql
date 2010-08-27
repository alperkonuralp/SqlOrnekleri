SELECT ProductID, ProductName, CategoryID,  
   (SELECT AVG(UnitPrice) 
    FROM Products as p 
    WHERE p.CategoryID = Products.CategoryID),
   UnitPrice, 
   (SELECT AVG(UnitPrice) 
    FROM Products as p 
    WHERE p.CategoryID = Products.CategoryID) - UnitPrice
FROM Products

SELECT CategoryID, AVG(UnitPrice)
FROM Products
Group BY CategoryID