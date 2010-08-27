SELECT OrderID, c.CustomerID, c.CompanyName, OrderDate
FROM Orders AS o
INNER JOIN Customers AS c
ON o.CustomerID = c.CustomerID