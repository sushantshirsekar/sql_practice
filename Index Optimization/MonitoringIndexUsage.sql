-- Monitoring Index Usage

SELECT 
	tbl.name AS TableName,
	idx.name AS IndexName,
	idx.type_desc as IndexType, 
	idx.is_primary_key as IsPrimaryKey,
	idx.is_unique as IsUnique,
	idx.is_disabled as IsDisabled,
	s.user_seeks AS UserSeeks, 
	s.user_scans AS UserScans, 
	s.user_lookups AS UserLookups, 
	s.user_updates AS UserUpdates,
	COALESCE(s.last_user_seek, s.last_user_scan)
FROM sys.indexes idx
JOIN sys.tables tbl
ON tbl.object_id = idx.object_id
LEFT JOIN sys.dm_db_index_usage_stats s
ON s.index_id = idx.index_id AND
s.object_id = tbl.object_id
ORDER BY tbl.name,idx.name


SELECT * FROM sys.dm_db_index_usage_stats

SELECT * FROM Sales.Employees

