-- Task 20
-- Rank the customers based on their total sales

SELECT 
	CustomerID,
	SUM(Sales) AS total_sales, 
	RANK() OVER(ORDER BY SUM(Sales) DESC) Rankings
FROM Sales.Orders
GROUP BY CustomerID