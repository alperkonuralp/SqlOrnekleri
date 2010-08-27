SELECT t.CustomerID, c.CompanyName,
       t.EmployeeID, e.FirstName, e.LastName,
       t.OrderCount
FROM (
    SELECT CustomerID, EmployeeID, COUNT(*) AS OrderCount
    FROM Orders
    GROUP BY CustomerID, EmployeeID) AS t
INNER JOIN Customers AS c
ON t.CustomerID = c.CustomerID
INNER JOIN Employees AS e
ON t.EmployeeID = e.EmployeeID