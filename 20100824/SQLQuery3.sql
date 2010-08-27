WITH Veri AS (
SELECT YEAR(OrderDate) AS 'Year', MONTH(OrderDate) AS 'Month',
    e.FirstName + ' ' + e.LastName AS EmployeeName,
    SUM(od.UnitPrice * od.Quantity * (1-od.Discount)) AS TotalPrice
FROM Orders AS o 
INNER JOIN [Order Details] AS od
ON o.OrderID = od.OrderID
INNER JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID
GROUP BY YEAR(OrderDate), MONTH(OrderDate),
    e.FirstName + ' ' + e.LastName
)
SELECT [Year], [Month], [Andrew Fuller],[Anne Dodsworth],
       [Janet Leverling],[Laura Callahan],[Margaret Peacock],
       [Michael Suyama],[Nancy Davolio],[Steven Buchanan]
FROM Veri PIVOT (
    SUM(TotalPrice)
    FOR EmployeeName IN ([Andrew Fuller],[Anne Dodsworth],
       [Janet Leverling],[Laura Callahan],[Margaret Peacock],
       [Michael Suyama],[Nancy Davolio],[Steven Buchanan])
) AS pvt
ORDER BY [Year], [Month]