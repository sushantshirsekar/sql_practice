-- Monitor Duplicate Indexes

SELECT
	tbl.name TableName,
	col.name IndexColumn, 
	idx.name IndexName,  
	idx.type_desc as IndexType,
	COUNT(*) OVER(PARTITION BY tbl.name, col.name) ColumnCount
FROM sys.indexes AS idx
JOIN sys.tables tbl ON tbl.object_id = idx.object_id 
JOIN sys.index_columns ic ON ic.object_id = idx.object_id AND ic.index_id = idx.index_id
JOIN sys.columns col ON ic.object_id = col.object_id AND ic.column_id = col.column_id
ORDER BY ColumnCount DESC