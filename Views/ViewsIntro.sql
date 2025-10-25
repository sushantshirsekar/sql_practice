/* Views is a virtual table that shows 
data without storing it physically
View is a virtual table based on the result set of a query,
without storing data in the database
Views are persisted data queries in a data base
*/

/* Views vs CTE
Views -> Reusability within multiple queries,
Persisted Logic for multiple queries, 
Need to maintain (Create, Drop, Alert)

CTE -> Reusability within Single query,
Temporary logic within one query,
No maintanence Required
*/

/* How views work?
When a view is created a meta of data and query to get data is stored in disk
Not the main data, when anyone uses view to get data, first db engine
executes user query to get view query and then view query is executed
in order to get main data from the table
*/

/* Creating View */


--CREATE VIEW Sales.V_Monthly_Summary AS
--(
--	SELECT 
--		DATETRUNC(month, OrderDate) order_month, 
--		SUM(Sales) monthly_sales,
--		COUNT(OrderID) monthly_orders,
--		SUM(Quantity) monthly_quantity
--	FROM Sales.Orders
--	GROUP BY DATETRUNC(month, OrderDate)
--)

-- Replace Logic Of a View -> 
-- Drop a view using T-SQL (Transact SQL)
-- And Create a new one

-- IF OBJECT_ID('Sales.V_Monthly_Summary', 'V') IS NOT NULL
--	 DROP VIEW Sales.V_Monthly_Summary;
-- GO
-- CREATE VIEW Sales.V_Monthly_Summary AS
-- (
--	 SELECT 
--		 DATETRUNC(month, OrderDate) order_month, 
--		 SUM(Sales) monthly_sales,
--		 COUNT(OrderID) monthly_orders
--	 FROM Sales.Orders
--	 GROUP BY DATETRUNC(month, OrderDate)
-- )

-- Find running total of sales for each month


SELECT
	order_month,
	monthly_sales,
	SUM(monthly_sales) OVER(ORDER BY order_month) running_total
FROM Sales.V_Monthly_Summary
