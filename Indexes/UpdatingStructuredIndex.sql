-- ===============
-- Updating Index 
-- ===============

-- To update index we need to first drop index
-- And then create a new one

-- Delete Index -> 
DROP INDEX  idx_CustomersDB_CustomerID ON Sales.CustomersDB

-- Creating a new one -> 
CREATE CLUSTERED INDEX idx_CustomersDB_CustomerID
ON Sales.CustomersDB (CustomerID)