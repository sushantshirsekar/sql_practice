-- ===============================
-- Performance Optimization in SQL
-- ===============================

-- Indexing in SQL improves query speed by enabling quick data access.

-- Three types of Indexing:
-- 1. Structure: Clustered, Non-Clustered
-- 2. Storage: Row-Store, Column-Store
-- 3. Function: Unique, Filtered

-- ===============================
-- B-Tree Structure (Common for Indexes)
-- ===============================
-- Both Clustered and Non-Clustered Indexes use a B-Tree structure:
-- 1?] Root Node:
--    The top-level index page; it contains pointers to intermediate nodes.
-- 2?] Intermediate Nodes:
--    Act as navigators containing sorted index entries that point 
--    to lower-level nodes.
-- 3?] Leaf Nodes:
--    The bottom level of the B-Tree where final references to data exist.
--
-- The B-Tree ensures balanced search paths, so data lookup takes
-- logarithmic time (O(log n)), making queries much faster.

-- ===============================
-- Clustered Index:
-- ===============================
-- 1?] Leaf Nodes:
--    Store the actual data rows themselves (not pointers).
--    Hence, the table data is physically ordered by the clustered index key.
--
-- 2?] Process:
--    - SQL starts from the Root Node and navigates through Intermediate Nodes.
--    - The final Leaf Node directly contains the required row data.
--    - No additional lookup is needed since leaf nodes = data pages.
--
-- 3?] Key Insight:
--    - Data is physically stored in sorted order of the clustered key.
--    - Only one clustered index can exist per table.
--    - Great for range queries and ordered retrieval.

-- ===============================
-- Non-Clustered Index (Heap):
-- ===============================
-- 1?] Leaf Nodes:
--    Store pointers (Row IDs or Clustered Keys) to actual data rows
--    located in separate base data pages.
--
-- 2?] Base Data Pages:
--    Contain the actual table data, which remains unordered.
--
-- 3?] Process:
--    - SQL searches the sorted index pages (Root ? Intermediate ? Leaf)
--      to find the Row ID or Clustered Key.
--    - Then uses that pointer to fetch the row from the base data page.
--
-- 4?] Key Insight:
--    - Index pages are sorted by the indexed column.
--    - Table data is unordered (Heap) or ordered by another clustered index.
--    - Faster lookups but involves one extra pointer lookup.

-- ================
-- Creating Indexes
-- ================

SELECT
	*
INTO Sales.CustomersDB
FROM Sales.Customers

SELECT 
	* 
FROM Sales.CustomersDB
WHERE CustomerID = 1

CREATE CLUSTERED INDEX idx_CustomersDB_CustomerID
ON Sales.CustomersDB (CustomerID)

CREATE NONCLUSTERED INDEX idx_CustomersDB_LastName
ON Sales.CustomersDB (LastName)

CREATE NONCLUSTERED INDEX idx_CustomersDB_FirstName
ON Sales.CustomersDB (FirstName)


-- To Update Index, we need to drop index and then create a new one

DROP INDEX  idx_CustomersDB_CustomerID ON Sales.CustomersDB

SELECT
	*
FROM Sales.CustomersDB
WHERE FirstName = 'Anna'
