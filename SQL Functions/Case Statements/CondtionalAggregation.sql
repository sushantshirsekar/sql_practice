-- Case Statement Use Case
-- Conditional Agregation
-- Apply aggregate functions only on subsets
-- of data that fulfill certain conditions
-- Count how many times each customer has made
-- an order with sales greater than 30


SELECT 
	CustomerID,
	SUM(CASE
		WHEN Sales > 30 THEN 1
		ELSE 0
	END) TotalOrdersSales,
	COUNT(*) TotalOrders
FROM SalesDB.Sales.Orders
GROUP BY CustomerID
