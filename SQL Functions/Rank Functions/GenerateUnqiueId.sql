/* 
ROW_NUMBER Use-Case
Generate Unique Id's
*/
-- Assign unique ID's to rows of Orders Archive table

/*
Generating Unique ID helps in paginating
Paginating is the process of dividing large chunks of Data into smaller one
*/

SELECT 
	ROW_NUMBER() OVER(ORDER BY OrderID,OrderDate) unique_id,
	*
FROM Sales.OrdersArchive