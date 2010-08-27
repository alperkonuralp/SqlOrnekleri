-- en yüksek fiyatlý beþ ürünü gösteriniz. 
SELECT TOP 5 ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice DESC