SELECT Country, City, COUNT(*)
FROM Customers
GROUP BY Country, City WITH ROLLUP
ORDER BY Country, City