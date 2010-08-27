SELECT *
FROM Customers
WHERE (Country = 'UK' AND City = 'London') OR 
	  (Country = 'USA' AND Region = 'CA')