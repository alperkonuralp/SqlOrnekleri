-- B�t�n Kategori Adlar�n� b�y�k harfe �eviren kodu yaz�n�z.

SELECT *
FROM Categories

UPDATE Categories
SET CategoryName = UPPER(CategoryName)
