-- ayný þehirdeki müþterileri gösteren sorguyu yazýnýz
SELECT c1.CompanyName, c1.City, c1.Country, c2.CompanyName
FROM Customers AS c1 
INNER JOIN Customers AS c2
ON c1.City = c2.City AND c1.Country = c2.Country
AND c1.CustomerID <> c2.CustomerID
ORDER BY Country, City
