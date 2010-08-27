SELECT Country AS 'Ülke', City AS 'Þehir'
FROM Customers
UNION
SELECT Country, City
FROM Employees
UNION
SELECT Country, City
FROM Suppliers
ORDER BY Country DESC, City