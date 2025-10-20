-- Case Statement Use Case
-- Handling Nulls 
-- Find the average scores of customers
-- and treat Nulls as 0
-- Additionally provide details such CustomerID
-- And LastName


SELECT 
	CustomerID, 
	FirstName, 
	LastName,
	Score,
	CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END ModScore, 
	AVG(CASE
		WHEN Score IS NULL THEN 0
		ELSE Score
	END) OVER() AvgScoreClean,
	AVG(Score) OVER() AvgScore
FROM SalesDB.Sales.Customers