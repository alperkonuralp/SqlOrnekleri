-- Products Tablosunda UnitsInStok de�eri 0 ve 
-- discontinued de�eri 0 olan sat�rlar�n UnitsInStok
-- de�erlerini 1 olarak de�i�tirelim.
UPDATE Products
SET UnitsInStock = 1
WHERE UnitsInStock = 0 AND Discontinued = 0