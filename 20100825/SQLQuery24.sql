SELECT *
FROM Orders
WHERE DATEDIFF(MONTH, OrderDate, GETDATE()) > 6