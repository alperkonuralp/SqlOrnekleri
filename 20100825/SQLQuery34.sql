SELECT sys.columns.name + ','
FROM sys.columns
WHERE object_id = OBJECT_ID('Products')