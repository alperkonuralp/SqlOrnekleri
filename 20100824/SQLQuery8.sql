-- ayný fiyata sahip ürünleri listeleyiniz.

SELECT p1.ProductName, p1.UnitPrice, p2.ProductName
FROM Products AS p1 
INNER JOIN Products AS p2
ON p1.UnitPrice = p2.UnitPrice AND p1.ProductID <> p2.ProductID

