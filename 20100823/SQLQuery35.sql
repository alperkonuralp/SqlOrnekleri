-- Customers tablosu ile employees tablosunu country kolonundan
-- birbirlerine baðlayýp, her iki taraftaki country satýrlarýný 
-- ekrana gösteren sorguyu yazýnýz. Bu sorguda her iki tarafta da
-- olmayan kolonlarda sonuçta gözüksün.

SELECT	DISTINCT Customers.Country AS CCountry, 
		Employees.Country AS ECountry
FROM	Customers FULL OUTER JOIN Employees
ON		Customers.Country = Employees.Country
