-- Aggregate Functions
-- Count, Sum, Avg, Max, Min

SELECT 
	CustomerID, 
	COUNT(*) TotalOrders, 
	SUM(Sales) TotalSales,
	AVG(Sales) AverageSales, 
	MAX(Sales) MaxSales, 
	MIN(Sales) MinSales
FROM SalesDB.Sales.Orders
GROUP BY CustomerID