-- Task 20
-- Rank the customers based on their total sales

SELECT 
	CustomerID,
	SUM(Sales) AS total_sales
FROM Sales.Orders
GROUP BY CustomerID
ORDER BY SUM(Sales) DESC