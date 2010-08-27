-- 1997 y�l� i�inde ayl�k ve sat�c� baz�nda 
-- yap�lan sat��lar�n adetlerini g�steren 
-- sorguyu yaz�n�z.

SELECT MONTH(OrderDate) AS 'Month', 
	EmployeeID, COUNT(*) AS 'OrderCount'
FROM Orders
--WHERE OrderDate BETWEEN '1997-01-01' AND 
--	'1997-12-31 23:59:59'
WHERE YEAR(OrderDate) = 1997
GROUP BY MONTH(OrderDate), EmployeeID WITH CUBE
ORDER BY MONTH(OrderDate), EmployeeID