SELECT ProductID, 
	--COUNT(*) AS 'Order Count',
	SUM(UnitPrice * Quantity) AS 'Total Price'
FROM [Order Details]
GROUP BY ProductID
HAVING COUNT(*) > 40
ORDER BY 'Total Price' DESC