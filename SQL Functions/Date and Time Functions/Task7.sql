-- TASK7
-- How many orders were placed each month?

SELECT 
	DATENAME(month, OrderDate),
	COUNT(*) no_of_order
FROM Sales.Orders
GROUP BY DATENAME(month, OrderDate)