SELECT *
FROM Orders
WHERE OrderID IN (
    SELECT OrderID
    FROM [Order Details]
    GROUP BY OrderID
    HAVING SUM(UnitPrice * Quantity) > 10000)