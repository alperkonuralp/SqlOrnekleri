SELECT Country, City, COUNT(*)
FROM Customers
GROUP BY Country, City
ORDER BY Country, City