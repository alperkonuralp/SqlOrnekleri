SELECT *
FROM Products
--WHERE ProductName LIKE 'an%' -- an ile baþlayanlarý getirir
--WHERE ProductName LIKE '%t' -- t ile bitenler getirir
--WHERE ProductName LIKE 'c%t' -- c ile baþlayýp, t ile bitenleri getirir
--WHERE ProductName LIKE '%t%' -- içinde t geçenler
--WHERE ProductName LIKE '%t%a' -- içinde t geçip, a ile bitenler
--WHERE ProductName LIKE 'a%t%' -- içinde t geçip, a ile baþlayanlar
WHERE ProductName LIKE 'a%t%n' -- içinde t geçip, a ile baþlayan ve n ile bitenler