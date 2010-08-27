-- Bütün Kategori Adlarýný büyük harfe çeviren kodu yazýnýz.

SELECT *
FROM Categories

UPDATE Categories
SET CategoryName = UPPER(CategoryName)
