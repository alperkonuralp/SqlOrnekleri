SELECT *
FROM Products
--WHERE ProductName LIKE 'an%' -- an ile ba�layanlar� getirir
--WHERE ProductName LIKE '%t' -- t ile bitenler getirir
--WHERE ProductName LIKE 'c%t' -- c ile ba�lay�p, t ile bitenleri getirir
--WHERE ProductName LIKE '%t%' -- i�inde t ge�enler
--WHERE ProductName LIKE '%t%a' -- i�inde t ge�ip, a ile bitenler
--WHERE ProductName LIKE 'a%t%' -- i�inde t ge�ip, a ile ba�layanlar
WHERE ProductName LIKE 'a%t%n' -- i�inde t ge�ip, a ile ba�layan ve n ile bitenler