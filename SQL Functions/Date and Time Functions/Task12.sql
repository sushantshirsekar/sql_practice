--Task 12 
-- Find the number of days betweeen each order and previous order

SELECT 
	OrderID, 
	OrderDate CurrentOrderDate,
	LAG(OrderDate) OVER (ORDER BY OrderDate) PreviousOrderDate, 
	DATEDIFF(DAY, LAG(OrderDate) OVER (ORDER BY OrderDate), OrderDate) NoOfDaysBetEachOrder
FROM Sales.Orders