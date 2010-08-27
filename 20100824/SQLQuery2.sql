-- Orders tablosu ile customer tablosunu birle�tirip,
-- OrderID, OrderDate, CustomerID, CompanyName, ContactName
-- alanlar�n� g�steren sorguyu yaz�n�z.
SELECT o.OrderID, o.OrderDate, o.CustomerID ,
       c.CompanyName, c.ContactName
FROM Orders AS o INNER JOIN Customers AS c
ON o.CustomerID=c.CustomerID  