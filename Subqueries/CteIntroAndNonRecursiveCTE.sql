/*
CTE -> Common Table Expression
Temporary named result set (virtual table),
that can be used multiple times within your query
to simplify and organize complex query.
CTE and Sub-Query does the same task then why to use CTE-> 
Differenct between CTE and Sub-Query
- CTE - Top to bottom	- Sub-Query bottom to top
- Sub-Query result can be used by main only once
- CTE results can be used by main query multiple times
When to use CTE -> 
When we want to execute a type of code multiple times with main query,
example -> I have a details table which I want to join with orders for multiple types
Inner, Left, Right, Full
If we use sub-query we need to write sub-query multiple times
but using cte we define it once and we can use cte multiple times
There are two types of CTE -> Recursive (executes only once) 
and Non-Recursive (executes until certain conditions are met) CTE
In Recursive CTE we have further more two types -> 
Standalone CTE and Nested CTE
ORDER BY Clause is not allowed inside CTE function
*/

-- Standalone CTE / Multiple Standalone CTE
-- Defined and Used Independently 
-- Runs independently as it's self contained
-- and doesn't rely on other queries


-- Step1 -> Find the total sales per customer
WITH cte_total_sales AS
(
	SELECT
		CustomerID,
		SUM(Sales) total_sales
	FROM Sales.Orders
	GROUP BY CustomerID
)
-- Step2 -> Find the last order for each customer
, cte_last_order AS
(
	SELECT
		CustomerID,
		MAX(OrderDate) AS last_order
	FROM Sales.Orders
	GROUP BY CustomerID
)
-- Main Query
SELECT
	c.CustomerID,
	c.FirstName, 
	c.LastName,
	cts.total_sales,
	clo.last_order
FROM Sales.Customers c
LEFT JOIN cte_total_sales AS cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN cte_last_order as clo
ON clo.CustomerID = c.CustomerID