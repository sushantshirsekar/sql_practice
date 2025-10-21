-- Task 19
-- Multiple Arguments for Partition by
-- Find the sales for each combination of
-- product and order status
-- Additionally provide details such as
-- OrderID and OrderDate


SELECT 
	OrderID, 
	OrderDate,
	ProductID,
	OrderStatus,
	SUM(Sales) OVER (PARTITION BY ProductID, OrderStatus) SalesByProductAndOrder
FROM SalesDB.Sales.Orders
