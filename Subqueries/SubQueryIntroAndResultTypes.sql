/* Sub-Query
A query inside the other query
SQL first runs sub-query and the data is retrieved
and stored in intermediate results 
and then main query is executed and operations are performed on the
data retrieved or new data is fetched and results are returned.
Why to use Sub-Queries -> 
When we have to perform many tasks it should be divided into small tasks
Step1 -> Join tables (Sub-query)
Step2 -> Filtering Data (Sub-query)
Step3 -> Transformations (Sub-query)
Step4 -> Aggregations (Main-query)

There are many types of Sub-Queries one of them is result types
There are three result type of sub-queries
1. Scalar Sub-Query -> One value as result
2. Row Sub-Query -> Multiple Rows with single Column
3. Table Sub-Query -> Multiple rows and multiple columns
*/

SELECT 
--Scalar Example
	--AVG(Sales)
--Row Example
	--Sales
--Table Example
	*
FROM Sales.Orders


