SELECT e1.FirstName, e1.LastName, e2.FirstName, e2.LastName
FROM Employees AS e1 
CROSS JOIN Employees AS e2
WHERE e1.EmployeeID <> e2.EmployeeID