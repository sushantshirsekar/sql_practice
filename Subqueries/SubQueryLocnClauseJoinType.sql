/* Sub-Query in Join Clause

*/

-- Show all customer details and find total number of orders

SELECT
	c.*, 
	o.total_orders
FROM Sales.Customers c
LEFT JOIN (
	SELECT
		CustomerID,
		COUNT(*) total_orders
	FROM Sales.Orders
	GROUP BY CustomerID
) o
ON c.CustomerID = o.CustomerID