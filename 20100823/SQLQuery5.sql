-- 20000$ dan yüksek toplam satýþ fiyatýna
-- sahip olan stoklarýn listesi

SELECT ProductID, 
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
GROUP BY ProductID
HAVING SUM(UnitPrice * Quantity) > 20000
ORDER BY 'Total Price' DESC