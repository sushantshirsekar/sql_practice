-- Aggregaton Advance (Group By and Window)
-- Group By -> Simple Data analysis
-- Window -> Advanced Data analysis
-- Find the total Sales accross all Orders
-- Find total sales for each product

-- Group By Aggregation 
SELECT
	ProductID,
	SUM(Sales) TotalSales
FROM SalesDB.Sales.Orders
GROUP BY ProductID;

-- Task 
-- Find total Sales for each product
-- Additionally provide details such as
-- OrderID, Order Date

-- Window Function Aggregation
SELECT 
	OrderID, 
	ProductID, 
	OrderDate,
	SUM(Sales) OVER()
FROM SalesDB.Sales.Orders