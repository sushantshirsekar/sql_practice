-- Task 13
-- Display the full name of customers in a single field
-- by merging their first and last names, 
-- and add 10 bonus points to each customer's score. 
-- If anyone is comparing two null values it won't work even of both are null



SELECT 
	FirstName, 
	LastName, 
	FirstName + ' ' + Coalesce(LastName, '') AS FullName, 
	Score, 
	COALESCE(Score, 0) + 10 AS ScoreWithBonus
FROM Sales.Customers