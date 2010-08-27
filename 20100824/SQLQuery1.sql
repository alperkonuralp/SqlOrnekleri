SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM Products AS p INNER JOIN Categories AS c
ON p.CategoryID = c.CategoryID

