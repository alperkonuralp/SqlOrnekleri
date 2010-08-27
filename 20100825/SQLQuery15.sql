ALTER TABLE Products ADD OldUnitPrice Money NOT NULL DEFAULT 0
GO
UPDATE Products
SET OldUnitPrice = UnitPrice
GO
SELECT * 
FROM Products