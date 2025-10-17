-- Task11
-- Find Average Shipping duration for each month

SELECT 
	DATENAME(Month, OrderDate) AS MonthData,
	AVG(DATEDIFF(day , OrderDate, ShipDate)) ShippingDuration
FROM Sales.Orders
GROUP BY DATENAME(Month, OrderDate)