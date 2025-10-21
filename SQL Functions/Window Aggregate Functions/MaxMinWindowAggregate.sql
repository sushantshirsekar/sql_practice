/*
Min, Max - Window Aggregate Function
Returns minimum and maximum value respectively
-- Find highest and lowest sales across all orders
-- Find highes and lowest sales for each product
-- Additionally provide details such as OrderID and OrderDate
*/

SELECT
	OrderID,
	OrderDate,
	ProductID,
	Sales,
	MIN(COALESCE(Sales, 0)) OVER() min_sales,
	MAX(COALESCE(Sales, 0)) OVER() max_sales,
	MIN(COALESCE(Sales, 0)) OVER(PARTITION BY ProductID) min_product_sales,
	MAX(COALESCE(Sales, 0)) OVER(PARTITION BY ProductID) max_product_sales
FROM Sales.Orders


-- Filter the dat using Min, Max
-- Show the employees who have the highest salaries
SELECT
*
FROM
	(SELECT
	*,
	MAX(Salary) Over() max_salary
	FROM Sales.Employees)t
WHERE Salary = max_salary

-- Find the deviation of sales from
-- Maximum and Minimum value of sales

SELECT
	OrderID,
	OrderDate,
	ProductID, 
	Sales, 
	MAX(Sales) OVER() highest_sales, 
	MIN(Sales) OVER() lowest_sales,
	Sales - MIN(Sales) OVER() dev_from_min, 
	MAX(Sales) OVER() - Sales dev_from_max
FROM Sales.Orders

-- Running Total and Rolling Total
-- Important for data analysis
SELECT
OrderID,
OrderDate,
Sales,
SUM(Sales) OVER(ORDER BY OrderID 
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) running_total
FROM Sales.Orders

-- Calculate moving average of sales for each product over time
SELECT
	OrderID,
	OrderDate,
	Sales,
	Avg(Sales) OVER(PARTITION BY ProductID) product_avg,
	Avg(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate) moving_avg
FROM Sales.Orders

-- Calculate moving average of sales for each product over time, 
-- Including only the next order
SELECT
	OrderID,
	OrderDate,
	Sales,
	Avg(Sales) OVER(PARTITION BY ProductID) product_avg,
	Avg(Sales) OVER(PARTITION BY ProductID ORDER BY OrderDate
	ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING
	) rolling_avg
FROM Sales.Orders