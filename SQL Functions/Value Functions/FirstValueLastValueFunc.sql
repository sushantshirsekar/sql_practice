/* 
FIRST_VALUE / LAST_VALUE Functions
*/
-- Find the lowest and highest sales for each product

SELECT
	ProductID,
	Sales,
	FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales) lowest_sales,
	LAST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING) highest_sales,
	FIRST_VALUE(Sales) OVER(PARTITION BY ProductID ORDER BY Sales DESC) highest_sales_fv,
	MIN(Sales) OVER(PARTITION BY ProductID) min_value, 
	MAX(Sales) OVER(PARTITION BY ProductID) max_value
FROM Sales.Orders