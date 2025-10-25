/* 
Nested CTE -> CTE inside another CTE, 
A nested uses the result of another CTE, 
so it can't run independently
Best Practice -> Try to merge CTE
*/

WITH cte_total_sales AS
(
	SELECT
		CustomerID,
		SUM(Sales) total_sales,
		MAX(OrderDate) last_order
	FROM Sales.Orders
	GROUP BY CustomerID
)
-- Step3 -> Rank Customers based on total sales per customer
, cte_rank_cust AS 
(
	SELECT
		CustomerID,
		RANK() OVER(ORDER BY total_sales DESC) customer_sales_rank
	FROM cte_total_sales
)
, cte_cust_segment AS
(
	SELECT
		CustomerID,
		total_sales,
		CASE
			WHEN total_sales > 100 THEN 'High'
			WHEN total_sales > 80 THEN 'Medium'
			ELSE 'Low'
		END cust_segment
	FROM cte_total_sales
)
-- Segment Customers based on their total sales
-- Main Query
SELECT
	c.CustomerID,
	c.FirstName, 
	c.LastName,
	cts.total_sales,
	cts.last_order,
	crs.customer_sales_rank,
	ccs.cust_segment
FROM Sales.Customers c
LEFT JOIN cte_total_sales AS cts
ON cts.CustomerID = c.CustomerID
LEFT JOIN cte_rank_cust AS crs
ON crs.CustomerID = c.CustomerID
LEFT JOIN cte_cust_segment AS ccs
ON ccs.CustomerID = c.CustomerID
