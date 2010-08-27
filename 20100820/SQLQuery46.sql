SELECT Country, City, COUNT(*)
FROM Customers
GROUP BY Country, City WITH CUBE
ORDER BY Country, City