-- TASK8
-- Show all the orders placed during the month of Feb?
-- When searching in date always use INT type it is faster

SELECT *
FROM Sales.Orders
WHERE MONTH(OrderDate) = 2
--HAVING DATENAME(month, OrderDate) = 'February'