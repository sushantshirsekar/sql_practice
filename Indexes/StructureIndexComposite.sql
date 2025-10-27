-- ================
-- Composite Index
-- ================

-- Index containing multiple parameters

-- When we are accessing data using multiple parameters in where 
-- and in future we want to access it more faster then we use indexing
-- but while accessing the parameters used should be in same sequence
-- as mentioned in composite index

-- Even if we are using only one parameter, 
-- it will work for left one not for the right.
-- Example we have columns -> A,B,C,D
-- Index will be used for (A), (A,B), (A,B,C) and (A,B,C,D)
-- Index won't be used for (B), (C), (D), (A,C) -> Skipping the most left or any inbetween

SELECT
	*
FROM Sales.CustomersDB
WHERE Country = 'USA' AND Score > 500

CREATE INDEX idx_CustomersDB_CountryScore
ON Sales.CustomersDB (Country, Score)