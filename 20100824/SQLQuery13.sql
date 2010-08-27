SELECT CompanyName AS Name, City, Country
FROM Customers
UNION
SELECT FirstName + ' ' + LastName, City, Country
FROM Employees
UNION
SELECT CompanyName, City, Country
FROM Suppliers
ORDER BY Country, City, Name