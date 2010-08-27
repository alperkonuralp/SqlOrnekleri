-- Toplam Sat�� De�eri 10000$ �zerindeki faturalar� g�sterelim.
SELECT /*(SELECT SUM(Quantity * UnitPrice)
       FROM [Order Details] AS od
       WHERE o.OrderID = od.OrderID), */
       *
FROM Orders AS o
WHERE (SELECT SUM(Quantity * UnitPrice)
       FROM [Order Details] AS od
       WHERE o.OrderID = od.OrderID) > 10000

--SELECT OrderID, SUM(Quantity * UnitPrice)
--FROM [Order Details]
--GROUP BY OrderID