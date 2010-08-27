-- customers tablosunda her müþteriye bir satýr numarasý 
-- verecek þekilde sorgu yazýnýz.
SELECT ROW_NUMBER() OVER(ORDER BY CustomerID) AS 'Row Number', 
	*
FROM Customers