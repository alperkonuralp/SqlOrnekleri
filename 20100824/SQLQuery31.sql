SELECT OrderID, SUM(Quantity * UnitPrice)
FROM [Order Details] AS od1
WHERE EXISTS (
    SELECT *
    FROM [Order Details] AS od2
    INNER JOIN Products AS p
    ON od2.ProductID = p.ProductID
    WHERE p.CategoryID = 2 AND od1.OrderID = od2.OrderID
)
GROUP BY OrderID
