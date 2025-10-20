/* Case Statements
-- Use Case 1 -> Categorizing Data 
-- Case Statement Rule -> Data type of all case
should be same
Task -> Create a report showing total sales for
each of the following categories: 
High (sales over 50), Medium (sales 21-50) and 
Low (sales 20 or less)
Sort the categories from highest sales to lowest
*/

SELECT
Category, 
SUM(Sales) AS TotalSales
FROM
	(SELECT 
		OrderID,
		Sales,
		CASE
			WHEN Sales > 50 THEN 'High'
			WHEN Sales > 20 THEN 'Medium'
			ELSE 'Low'
		END Category
	FROM SalesDB.Sales.Orders
	)t
GROUP BY Category
ORDER BY TotalSales DESC