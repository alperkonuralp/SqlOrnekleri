SELECT sys.columns.*
FROM sys.columns
INNER JOIN sys.tables
ON sys.columns.object_id = sys.tables.object_id
WHERE sys.tables.name = 'Products'
--WHERE object_id = OBJECT_ID('Products')