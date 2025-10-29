-- ======================
-- Conclusion for Indexes
-- ======================

-- Heap Index
-- For Inserts
-- For staging Tables (Staging Tables -> )

-- Clustered Index (Row Store)
-- For primary Keys
-- If not ID then date column for sorting
-- OLTP (Online Transaction Process)

-- NonClustered Index
-- For Non Primary Keys
-- Foreign keys, Joins and filters

-- ColumnStore Index 
-- For analytical queries
-- Reduce size of large table
-- OLAP (Online Analytical Process)

-- Filtered Index
-- Subset Of Original Data
-- Reduce size of Index

-- Unique Index 
-- Data Integrates for no duplicates

-- Getting all the indexes for a specific table
sp_helpindex 'Sales.Customers'