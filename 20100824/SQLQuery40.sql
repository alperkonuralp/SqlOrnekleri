WITH Veri AS (
SELECT YEAR(OrderDate) AS 'Yil', MONTH(OrderDate) AS 'Ay',
       EmployeeID, SUM(Quantity * UnitPrice) AS Price
FROM Orders as o
INNER JOIN [Order Details] AS od
ON o.OrderID  = od.OrderID
GROUP BY GROUPING SETS (
    (YEAR(OrderDate), MONTH(OrderDate), EmployeeID),
    (YEAR(OrderDate), MONTH(OrderDate))
)
),
Veri2 AS (
    SELECT Yil, Ay, ISNULL(EmployeeID,0) AS EmployeeID, Price
    FROM Veri
)

SELECT [Yil], [Ay], [1], [2], [3], [4], [5], [6], [7], [8], [9], [0]
FROM Veri2 PIVOT (
    SUM(Price)
    FOR EmployeeID IN ([1], [2], [3], [4], [5], [6], [7], [8], [9], [0])
) AS pvt
ORDER BY [Yil], [Ay]
