SELECT COUNT(*)
FROM Customers

SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country
ORDER BY Country

SELECT Country, City, COUNT(*)
FROM Customers
GROUP BY Country, City
ORDER BY Country, City