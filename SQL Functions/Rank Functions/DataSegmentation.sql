/* NTILE() Use-Cases
Data Segmentation for Data Analysis
ETL and Equal load processing for Data Engineering
*/

-- Data Segmentation
-- Segment all orders into three categories
-- High, Medium, Low based on sales
SELECT
*,
CASE
	WHEN buckets = 1 THEN 'High'
	WHEN buckets = 2 THEN 'Medium'
	WHEN buckets = 3 THEN 'Low'
END data_segmentation
FROM
(
SELECT
	OrderID, 
	OrderDate, 
	Sales, 
	NTILE(3) OVER(ORDER BY Sales DESC) buckets
FROM Sales.Orders
)t
