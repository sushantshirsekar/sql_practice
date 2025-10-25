/* Sub-Query in Location/Clauses type in Where
Comparison EXISTS Operator -> Check if a Sub-Query
returns any rows
EXISTS is a corelated type
*/

-- Show details of orders by the customers exists in Germany

SELECT
	*
FROM Sales.Orders o
WHERE 
NOT EXISTS 
(
	SELECT 
		1
	FROM Sales.Customers c
	WHERE Country = 'Germany' 
	AND 
	c.CustomerID = o.CustomerID
)