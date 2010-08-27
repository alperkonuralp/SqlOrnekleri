SELECT Country
FROM Customers
INTERSECT 
SELECT Country 
FROM Suppliers
ORDER BY Country