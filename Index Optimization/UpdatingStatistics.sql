-- Updating Statistics

SELECT 
	SCHEMA_NAME(t.schema_id) AS SchemaName,
	t.name AS TableName,
	s.name AS StatisticName,
	sp.last_updated AS LastUpdate,
	DATEDIFF(DAY ,sp.last_updated, GETDATE()) AS LastUpdateDay,
	sp.rows AS 'Rows', 
	sp.modification_counter AS ModificationsSinceLastUpdate
FROM sys.stats AS s
JOIN sys.tables AS t
ON s.object_id = t.object_id
CROSS APPLY sys.dm_db_stats_properties (s.object_id, s.stats_id) AS sp
ORDER BY sp.modification_counter DESC


UPDATE STATISTICS Sales.Customers _WA_Sys_00000004_35BCFE0A

UPDATE STATISTICS Sales.Customers

-- Update Statistics of whole data base (Note it can take a lot of time)
-- Normally on weekend we run update statistics
-- Or on any day we have a lot of data migration we update after that

EXEC sp_updatestats
