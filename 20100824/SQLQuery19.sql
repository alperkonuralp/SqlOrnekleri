SELECT OrderID, CustomerID, 
    (
        SELECT CompanyName 
        FROM Customers AS c 
        WHERE c.CustomerID = o.CustomerID ) AS CompanyName,
    OrderDate
FROM Orders AS o