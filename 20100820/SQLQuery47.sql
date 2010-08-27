SELECT Country, Region, City, COUNT(*)
FROM Customers
GROUP BY GROUPING SETS (
	(Country),
	(Country, Region),
	(Country, Region, City)
)
ORDER BY Country, Region, City