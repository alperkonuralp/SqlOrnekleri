-- Products Tablosunda UnitsInStok deðeri 0 ve 
-- discontinued deðeri 0 olan satýrlarýn UnitsInStok
-- deðerlerini 1 olarak deðiþtirelim.
UPDATE Products
SET UnitsInStock = 1
WHERE UnitsInStock = 0 AND Discontinued = 0