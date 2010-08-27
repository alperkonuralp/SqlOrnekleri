SELECT e1.EmployeeID, e1.FirstName, e1.LastName, e1.ReportsTo,
       e2.FirstName, e2.LastName
FROM Employees AS e1
LEFT OUTER JOIN Employees AS e2
ON e1.ReportsTo = e2.EmployeeID