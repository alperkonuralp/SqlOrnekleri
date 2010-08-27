SELECT sys.tables.name AS [Table], sys.columns.name AS [Column]
FROM sys.columns 
LEFT OUTER JOIN sys.tables
on sys.columns.object_id = sys.tables.object_id
WHERE sys.columns.name = 'UnitPrice'