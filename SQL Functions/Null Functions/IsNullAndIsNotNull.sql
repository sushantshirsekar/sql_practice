/* 
Is Null and Is Not Null
Use case to clean the data using Is Null and Is Not null Filter
Identify the customers who don't have any scores
*/

SELECT
	CustomerID, 
	FirstName, 
	Score
FROM SalesDB.Sales.Customers
WHERE Score IS Null  -- Provides data for customers who don't have scores
--WHERE Score IS NOT NULL  -- Procides data for customers who have scores

