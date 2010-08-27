SELECT ProductID, ProductName, UnitPrice, 
   (SELECT AVG(UnitPrice) FROM Products) - UnitPrice
FROM Products

SELECT AVG(UnitPrice) 
FROM Products