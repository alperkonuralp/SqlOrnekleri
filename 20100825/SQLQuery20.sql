-- 1997-01-01 ile 1997-01-31 tarihleri arasýndaki 
-- satýþlarýn Required Date deðerini 1 gün sonraya yükseltelim.

UPDATE Orders
SET RequiredDate = DATEADD(Day, 1, RequiredDate)
WHERE YEAR(OrderDate ) = 1997 AND MONTH(OrderDate) = 1