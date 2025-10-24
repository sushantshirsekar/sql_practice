/* 
ROW_NUMBER Use-Case
Bottom N-Analysis
*/

-- Find the lowest 2 customers based on their total sales
SELECT
	*
FROM
	(SELECT
		CustomerID,
		SUM(Sales) total_sales,
		ROW_NUMBER() OVER(ORDER BY SUM(Sales)) rank_customers
	FROM Sales.Orders
	GROUP BY CustomerID)t
WHERE rank_customers <= 2