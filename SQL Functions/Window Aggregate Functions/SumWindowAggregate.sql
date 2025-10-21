/* 
Sum - Window Aggregate Function
-- Find total sales across all orders and
find total sales for each product 
Additionally include OrderID and OrderDate
*/

SELECT 
	OrderID, 
	OrderDate,
	ProductID,
	SUM(Sales) OVER() total_sales, 
	SUM(Sales) OVER(Partition by ProductID) sales_by_products
FROM Sales.Orders

-- Comparions Analysis Use-Case
-- Find the percentage contribution of each sale compared to total sales
SELECT 
	OrderID,
	OrderDate,
	Sales,
	ROUND (CAST(Sales AS FLOAT) / SUM(Sales)  over() * 100 ,2) percentage_distribution
FROM Sales.Orders
