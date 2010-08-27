SELECT Orders.OrderID, Orders.OrderDate, Orders.CustomerID, 
	Customers.CustomerID, Customers.CompanyName
FROM Orders INNER JOIN Customers
ON Orders.CustomerID = Customers.CustomerID
Order By Orders.CustomerID
