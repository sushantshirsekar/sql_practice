-- Task 20
-- Rank the customers based on their total sales
-- Sequence when using Window Functions
-- Always add Group By First and then use Window Function
-- Window Function for advance data analysis
-- Group By Function for simple data analysis
-- Window function + Window Definition using Over Clause -> 
-- Partition By (to aggregate), Order (to implement sequence),
-- Frame Clause (to define subsets of data)

SELECT 
	CustomerID,
	SUM(Sales) AS total_sales, 
	RANK() OVER(ORDER BY SUM(Sales) DESC) Rankings
FROM Sales.Orders
GROUP BY CustomerID