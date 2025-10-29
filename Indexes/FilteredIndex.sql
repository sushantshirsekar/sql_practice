-- ==============
-- Filtered Index
-- ==============

-- An index that includes only rows meeting the specified conditions
-- Cannont use filtered index on Clustered Index
-- Cannont use filtered index on ColumnStore Index

SELECT * FROM Sales.Customers
WHERE Country = 'Germany'

CREATE NONCLUSTERED INDEX idx_Customers_Country
ON Sales.Customers (Country)
WHERE Country = 'USA'

CREATE NONCLUSTERED COLUMNSTORE INDEX idx_Customers_Country_CS
ON Sales.Customers (Country)