SELECT o.OrderID, o.OrderDate,
    c.CustomerID, c.CompanyName, c.ContactName,
    e.EmployeeID, e.FirstName, e.LastName
FROM Orders AS o 
INNER JOIN Customers AS c
ON o.CustomerID = c.CustomerID
INNER JOIN Employees AS e
ON o.EmployeeID = e.EmployeeID