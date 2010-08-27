-- Orders tablosu ile customer tablosunu birleþtirip,
-- OrderID, OrderDate, CustomerID, CompanyName, ContactName
-- alanlarýný gösteren sorguyu yazýnýz.
SELECT o.OrderID, o.OrderDate, o.CustomerID ,
       c.CompanyName, c.ContactName
FROM Orders AS o INNER JOIN Customers AS c
ON o.CustomerID=c.CustomerID  