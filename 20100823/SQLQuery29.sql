SELECT OrderID, OrderDate, Employees.EmployeeID, 
	Employees.FirstName, Employees.LastName
FROM (SELECT OrderID, OrderDate, EmployeeID
	FROM Orders
	WHERE OrderDate BETWEEN '1997-01-01' AND '1997-01-07'
) AS Orders RIGHT OUTER JOIN Employees
ON Orders.EmployeeID = Employees.EmployeeID
