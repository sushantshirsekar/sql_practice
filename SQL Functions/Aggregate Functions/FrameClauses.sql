-- Using SUM() with different window frame clauses
-- ORDER BY is mandatory in OVER(), otherwise SQL won’t know the row order
-- If we don't specify any frame clause default is UNBOUNDED PRECEDING AND CURRENT ROW
-- *** RULES for Windowed Functions *** 
-- 1. Windowed fucntions are only allowed in SELECT and ORDER BY
-- If we use it in WHERE OR GROUP BY Clause it will throw error
-- 2. Nesting of Window Functions is not allowed
-- 3. Window function would be executed after WHERE Clause (First Filtering and then Aggregation)
-- 4. Window function can be used with GROUP BY only if we are using it for SAME Column

SELECT
	OrderID,
	OrderDate,
	OrderStatus,
	Sales, 
	SUM (Sales) OVER(PARTITION BY OrderStatus ORDER BY OrderDate
	--ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
	--ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
	--ROWS 2 PRECEDING
	--ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
	)  total_sales
FROM Sales.Orders
