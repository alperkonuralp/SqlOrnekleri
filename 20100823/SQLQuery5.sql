-- 20000$ dan y�ksek toplam sat�� fiyat�na
-- sahip olan stoklar�n listesi

SELECT ProductID, 
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(UnitPrice * Quantity) > 20000
ORDER BY 'Total Price' DESC