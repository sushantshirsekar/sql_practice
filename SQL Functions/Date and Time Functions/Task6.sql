-- TASK6
-- How many orders were placed each year?

SELECT 
	YEAR(OrderDate),
	COUNT(*) no_of_order
FROM Sales.Orders
GROUP BY YEAR(OrderDate)