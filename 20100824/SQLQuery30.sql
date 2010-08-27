SELECT OrderID, SUM(Quantity * UnitPrice)
FROM [Order Details]
WHERE OrderID IN (
    SELECT DISTINCT OrderID 
    FROM [Order Details] AS od
    INNER JOIN Products AS p
    ON od.ProductID = p.ProductID
    WHERE p.CategoryID = 2
)
GROUP BY OrderID


