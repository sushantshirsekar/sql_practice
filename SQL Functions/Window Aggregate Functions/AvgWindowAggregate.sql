/* 
Avg - Window Aggregate Function
Returns Avg within a Window
-- Find avg sales across all orders
-- Find avg sales for each product
*/
SELECT
	OrderID, 
	OrderDate, 
	Sales, 
	AVG(COALESCE(Sales, 0)) OVER() total_avg,
	AVG(COALESCE(Sales, 0)) OVER(PARTITION BY ProductID) avg_by_product
FROM Sales.Orders

-- Find Avg scores of customers
-- Additionally provide details CustomerID, FirstName, LastName

SELECT
	CustomerID, 
	FirstName,
	LastName,
	Score,
	Avg(Coalesce(Score, 0)) OVER() cleaned_score,
	Avg(Coalesce(Score, 0)) OVER() avg_of_cust
FROM Sales.Customers

-- Find all orders where sales are higher than
-- average sales across all orders
SELECT 
*
FROM(
SELECT
	OrderID,
	OrderDate,
	Sales,
	AVG(COALESCE(SALES,0)) OVER() avg_sales
FROM Sales.Orders)t
WHERE Sales > avg_sales
