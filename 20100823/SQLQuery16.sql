-- customers tablosunda her m��teriye bir sat�r numaras� 
-- verecek �ekilde sorgu yaz�n�z.
SELECT ROW_NUMBER() OVER(ORDER BY CustomerID) AS 'Row Number', 
	*
FROM Customers