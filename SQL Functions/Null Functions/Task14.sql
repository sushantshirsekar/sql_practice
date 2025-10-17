-- Task 14
-- Sort the customers from lowest to highest scores, 
-- with nulls appearing last

SELECT 
	CustomerID, 
	FirstName, 
	Score, 
	CASE WHEN Score IS NULL THEN 1 ELSE 0 END AS Flag
FROM Sales.Customers
ORDER BY CASE WHEN Score IS NULL THEN 1 ELSE 0 END, Score