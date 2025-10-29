-- Monitor Index Fragmentation
-- Fragmentation -> Unused Spaces, Data pages are out of order
-- Fragmentation Methods : Reorganize, 
-- Reorganize -> Defragment data at the leaf node level, 
-- it is a light operation
-- Rebuild -> Recreates Index from scratch, heavy operation

-- Step1 -> Check the health of the indexes

SELECT 
	tbl.name AS TableName,
	idx.name AS IndexName,
	s.avg_fragmentation_in_percent,
	s.page_count
FROM sys.dm_db_index_physical_stats(DB_ID(), NULL, NULL, NULL, 'LIMITED') AS s
INNER JOIN sys.tables tbl
ON s.object_id = tbl.object_id
INNER JOIN sys.indexes idx
ON idx.object_id = s.object_id AND
idx.index_id = s.index_id
ORDER BY s.avg_fragmentation_in_percent DESC

-- When to Refragment? 
-- 0% to 10% No need to do anything
-- 10% to 30% Rorganize
-- More than 30% Rebuild Index

-- Reorganize Example
ALTER INDEX idx_Customers_Country ON Sales.Customers REORGANIZE

-- Rebuild Example
ALTER INDEX idx_Customers_Country ON Sales.Customers Rebuild

