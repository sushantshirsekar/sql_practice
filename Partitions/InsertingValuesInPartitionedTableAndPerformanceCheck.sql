-- Step 6 -> Insert Data into the partitioned table

INSERT INTO Sales.Orders_Partitioned VALUES (1, '2023-05-15', 100); 
INSERT INTO Sales.Orders_Partitioned VALUES (2, '2024-07-20', 100); 
INSERT INTO Sales.Orders_Partitioned VALUES (3, '2025-12-31', 50); 
INSERT INTO Sales.Orders_Partitioned VALUES (4, '2026-01-01', 50);

SELECT * FROM Sales.Orders_Partitioned

SELECT
	p.partition_number AS PartitionNumber, 
	f.name AS PartitionFilegroup,
	p.rows AS NumberOfRows
FROM sys.partitions p
JOIN sys.destination_data_spaces dds ON p.partition_number = dds.destination_id
JOIN sys.filegroups f ON dds.data_space_id = f.data_space_id
WHERE OBJECT_NAME(p.object_id) = 'Orders_Partitioned';

-- Performance of Partitioned Table

SELECT *
FROM Sales.Orders_NoPartition
WHERE OrderDate IN ('2026-01-01', '2025-12-31')

SELECT *
FROM Sales.Orders_Partitioned
WHERE OrderDate IN ('2026-01-01', '2025-12-31')