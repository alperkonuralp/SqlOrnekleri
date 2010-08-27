-- 1997-01-01 ile 1997-01-31 tarihleri aras�ndaki 
-- sat��lar�n Required Date de�erini 1 g�n sonraya y�kseltelim.

UPDATE Orders
SET RequiredDate = DATEADD(Day, 1, RequiredDate)
WHERE YEAR(OrderDate ) = 1997 AND MONTH(OrderDate) = 1