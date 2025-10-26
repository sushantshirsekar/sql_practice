/* 
CTAS -> Create Table As Selected
We create a table based on SELECT Statement
It is similar to views but views doesn't store the
data inside db instead it stores queries to which point
to the data, where as CTAS stores actual data in DB
Pros -> If views logic is complex then it would take time for each use
Using CTAS will take time once to create table and then each user could
access it faster
Cons -> If DBA updates data in main table views would also update data
to the user as it doesn't have data it stores query to data but CTAS
stores data and update to main data wouldn't reflect in CTAS table
And to update data everytime we need to drop the table and then execute
it again and if we want to perform delete and create using single query
then we need to use transact-sql 
Use-Cases -> 
1] Speed Enhancement
2] Data SnapShot to perform operations on data without affecting original Data
3] Use to create Data Marts from Data Warehouse, if the logic for views get complex
and time taking especially then we can use CTAS so only once time is consumed and
then data marts are accessed by users quickly. 
In views we created virrtual layer, but with CTAS we create physical layer
*/


SELECT
	DATENAME(MONTH, OrderDate) OrderMonth,
	COUNT(OrderID) TotalOrders
INTO Sales.MonthlyOrders
FROM Sales.Orders
GROUP BY DATENAME(MONTH, OrderDate)
ORDER BY OrderMonth

DROP TABLE SalesDB.Sales.MonthlyOrders

-- Single Query Update (Delete and Create)
-- 'U' means User defined table

IF OBJECT_ID('Sales.MonthlyOrders', 'U') IS NOT NULL
	DROP TABLE Sales.MonthlyOrders
GO
	SELECT
		DATENAME(MONTH, OrderDate) OrderMonth,
		COUNT(OrderID) TotalOrders
	INTO Sales.MonthlyOrders
	FROM Sales.Orders
	GROUP BY DATENAME(MONTH, OrderDate)
	ORDER BY OrderMonth












