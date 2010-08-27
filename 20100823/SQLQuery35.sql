-- Customers tablosu ile employees tablosunu country kolonundan
-- birbirlerine ba�lay�p, her iki taraftaki country sat�rlar�n� 
-- ekrana g�steren sorguyu yaz�n�z. Bu sorguda her iki tarafta da
-- olmayan kolonlarda sonu�ta g�z�ks�n.

SELECT	DISTINCT Customers.Country AS CCountry, 
		Employees.Country AS ECountry
FROM	Customers FULL OUTER JOIN Employees
ON		Customers.Country = Employees.Country
