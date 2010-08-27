-- Orders Tablosundaki OrderDate, RequiredDate, ShippedDate  
-- de�erlerine 13 y�l ekleyelim.

UPDATE Orders
SET OrderDate = DATEADD(YEAR, 13, OrderDate),
	RequiredDate = DATEADD(YEAR, 13, RequiredDate),
	ShippedDate = DATEADD(YEAR, 13, ShippedDate)