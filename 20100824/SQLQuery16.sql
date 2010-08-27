SELECT Country
FROM Customers
EXCEPT 
SELECT Country 
FROM Suppliers
ORDER BY Country