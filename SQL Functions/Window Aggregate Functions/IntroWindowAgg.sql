/* 
Aggregate Functions -> 
Count, Sum, Avg, Max, Min
COUNT(*) -> Counts Null as a row too
If you don't want to count Null values then enter
Column Name inside COUNT Paranthesis eg - COUNT(Sales)
*/

/* COUNT Use Cases
1. Overall Analysis, 2. Category Analysis, 3. Quality Checks: Identify nulls
4. Quality Checks: Identify duplicates
*/


-- Find total number of Orders
-- Find total number of Orders for Each Customer

SELECT 
	OrderID,
	OrderDate,
	CustomerID,
	COUNT(*) OVER(PARTITION BY CustomerID) number_of_orders
FROM Sales.Orders

-- Find total Number of Customers
-- Additionally provide all customer details
SELECT 
	*,
	COUNT(*) OVER() total_customers,
	COUNT(1) OVER() total_customers_using_one
FROM Sales.Customers

-- Find the total number of scores of customers
SELECT 
	*, 
	COUNT(Score) OVER() total_no_of_score,
	COUNT(Country) OVER() total_countries
FROM Sales.Customers