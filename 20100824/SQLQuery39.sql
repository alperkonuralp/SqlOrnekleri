WITH Veri AS (
SELECT YEAR(OrderDate) AS 'Yil', MONTH(OrderDate) AS 'Ay',
       EmployeeID, SUM(Quantity * UnitPrice) AS Price
FROM Orders as o
INNER JOIN [Order Details] AS od
ON o.OrderID  = od.OrderID
GROUP BY YEAR(OrderDate), MONTH(OrderDate), EmployeeID
),
Veri2 AS (
SELECT [Yil], [Ay], [1], [2], [3], [4], [5], [6], [7], [8], [9]
FROM Veri PIVOT (
    SUM(Price)
    FOR EmployeeID IN ([1], [2], [3], [4], [5], [6], [7], [8], [9])
) AS pvt

)
SELECT *, ISNULL([1],0) + ISNULL([2],0) + ISNULL([3],0)+ ISNULL([4],0) + ISNULL([5],0) + ISNULL([6],0) + ISNULL([7],0) + ISNULL([8],0) + ISNULL([9],0)
FROM Veri2
ORDER BY Yil, Ay