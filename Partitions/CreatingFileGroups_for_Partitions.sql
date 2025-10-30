-- Step 2 -> Building Partitions -> Creating FileGroups

-- FileGroups -> Logical Container of one or more data files
-- to help organize partitions

-- Containers to store partitioned Data

ALTER DATABASE SalesDB ADD FILEGROUP FG_2023; 
ALTER DATABASE SalesDB ADD FILEGROUP FG_2024; 
ALTER DATABASE SalesDB ADD FILEGROUP FG_2025; 
ALTER DATABASE SalesDB ADD FILEGROUP FG_2026; 


-- To remove file groups 
ALTER DATABASE SalesDB REMOVE FILEGROUP FG_2023;
ALTER DATABASE SalesDB REMOVE FILEGROUP FG_2024;
ALTER DATABASE SalesDB REMOVE FILEGROUP FG_2025;
ALTER DATABASE SalesDB REMOVE FILEGROUP FG_2026;
GO


-- Query lists all existing FileGroups

SELECT
	*
FROM sys.filegroups
WHERE type='FG'