SELECT Country AS '�lke', City AS '�ehir'
FROM Customers
UNION
SELECT Country, City
FROM Employees
UNION
SELECT Country, City
FROM Suppliers
ORDER BY Country DESC, City