-- Null Functions
-- Null means nothing, Unknown
-- ISNULL -> Replace NULL with a value
-- COALESCE -> Returns first non-null value from a list 
-- NULLIF -> 
-- IS NULL, IS NOT NULL

-- IsNull and Coalesce Usecase
-- Before joining table
-- Handle null before sorting data

-- Find average scores of the customers

SELECT 
	CustomerID,
	Score, 
	ISNULL(score, 0) Score2,
	AVG(ISNULL(score, 0)) OVER () AvgScores
FROM Sales.Customers

