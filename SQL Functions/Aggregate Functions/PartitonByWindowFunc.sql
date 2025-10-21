-- Partition By in Window Function
-- Find the total sales for each product, 
-- Additionally provide details such as 
-- OrderID and OrderDate

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	SUM(Sales) OVER() TotalSales,
	SUM(Sales) OVER 
		(PARTITION BY ProductID) TotalSalesProducts,
	CustomerID, 
	SUM(Sales) OVER 
	(PARTITION BY CustomerID) TotalSalesProducts
FROM SalesDB.Sales.Orders

