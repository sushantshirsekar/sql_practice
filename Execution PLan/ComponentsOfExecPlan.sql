-- ============================
-- Components Of Execution Plan
-- ============================

-- Table Scan
-- Scans every row

-- Index Scan
-- Reads all entries in an index to find results

-- Index Seek 
-- A targeted search within an Index, retrieving only specific rows

-- Join Algorithms
-- Nested Loops -> Compares tables row by row, best for small tables
-- Hash Match -> Matches rows using a hash table, best for large tables
-- Merge Join -> Merge two sorted tables, efficient when both are sorted 


SELECT
	*
FROM FactResellerSales
WHERE CarrierTrackingNumber = '4911-403C-98'


CREATE NONCLUSTERED INDEX idx_FactReseller_CTA
ON FactResellerSales (CarrierTrackingNumber)