/* 
Non-Corelated and Corelated Sub-Queries
Non-Corelated -> A subquery that runs independently from main query
Corelated -> A subquery that relays on values from the main query
Corelated Sub-Query execution -> Main query executes and get each row and 
for each row subquery is executed result is taken and then main query for
next row
Non-Corelated Sub-Query execution -> Sub-Query is executed once the results
of subquery is stored in cache and then main query access it and
main query provides final result
*/

-- Show all customer details and find the total orders of each customer
-- Corelated sub-query

SELECT
	*,
	(SELECT 
		COUNT(*) 
	FROM Sales.Orders o
	WHERE o.CustomerID = c.CustomerID
	) total_sales
FROM Sales.Customers c

