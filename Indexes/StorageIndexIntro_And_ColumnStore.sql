-- ================================
-- Storage: Row-Store, Column-Store
-- ================================

-- RowStore -> Stores data row by row in data page
-- ColumnStore -> Stores data column by column in data page

-- How to create column store index?
-- You can create only one column store index in a table
-- It can be clustered or non clustered
-- In azure server you can create multiple column store index

DROP INDEX idx_DBCustomers_CS ON Sales.DBCustomers

SELECT
	*
INTO Sales.DBCustomers
FROM Sales.Customers

CREATE CLUSTERED COLUMNSTORE INDEX idx_DBCustomers_CS
ON Sales.DBCustomers

-- Un-Clustered Column Store Index 
CREATE NONCLUSTERED COLUMNSTORE INDEX idx_DBCustomers_CS_FirstName
ON Sales.DBCustomers(FirstName)

DROP INDEX idx_CustomersDB_CustomerID ON Sales.CustomersDB