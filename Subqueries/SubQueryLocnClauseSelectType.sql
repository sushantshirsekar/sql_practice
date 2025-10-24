/* 
Sub-Query in Select Clause
Sub-Query inside Select clause 
must be of scalar result (one value result) type
*/

-- Show the product IDs, names, prices and total number of orders

SELECT
	ProductID,
	Price,
	Product, 
	(SELECT COUNT(*) FROM Sales.Orders) AS total_orders
	
FROM Sales.Products
