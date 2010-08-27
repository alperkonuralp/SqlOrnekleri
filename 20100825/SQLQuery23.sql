-- Orders Tablosundaki OrderDate, RequiredDate, ShippedDate  
-- deðerlerine 13 yýl ekleyelim.

UPDATE Orders
SET OrderDate = DATEADD(YEAR, 13, OrderDate),
	RequiredDate = DATEADD(YEAR, 13, RequiredDate),
	ShippedDate = DATEADD(YEAR, 13, ShippedDate)