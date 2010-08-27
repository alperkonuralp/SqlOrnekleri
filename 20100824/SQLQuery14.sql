SELECT Country
FROM Customers
UNION ALL
SELECT Country 
FROM Suppliers
ORDER BY Country