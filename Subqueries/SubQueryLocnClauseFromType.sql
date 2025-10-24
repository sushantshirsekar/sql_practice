/* Types of Sub-Query
Based on Location / Clause
There are four types
Sub-Query in From Clause -> Subquery inside from clause
Sub-Query in Select Clause ->
Sub-Query in Join Clause ->
Sub-Query in Where Clause -> 
Illustrated in the example below
*/

/* How database execute sub-queries behind the scene 
-> Data base engine first executes sub-query and the result of sub-query
is stored temporarily inside cache memory and once done with sub-query
db engine starts executing main query and main query then interacts with
cache storage and data is retrieved quickly from the cache. 
The results are returned to db engine and engine to client side
*/

-- Find the products that have higher price
-- than the average price of all products.
SELECT 
	* 
FROM
	-- SubQuery
	(SELECT
		ProductID,
		Price,
		AVG(COALESCE(Price,0)) OVER() avg_sales
	FROM Sales.Products) AS alias
WHERE price > avg_sales

-- Rank customers based on their total amount of sales
SELECT
*,
RANK() OVER(ORDER BY customer_sales DESC) customer_ranks
FROM
(SELECT
	CustomerID, 
	SUM(Sales) AS customer_sales
FROM Sales.Orders
GROUP BY CustomerID) AS alias