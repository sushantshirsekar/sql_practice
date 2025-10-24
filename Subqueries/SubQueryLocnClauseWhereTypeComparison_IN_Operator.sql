/* Sub-Query in WHERE Clause
Used for complex filtering logic
and makes query more flexible and dynamic
Furthermore we have two types -> Comparison and Logical
Sub-Query used in where clause should be of 
scalar result type (single value result) for comparison
Sub-Query used in where clause should be of 
row result type (single column multiple values result) for logical
In Logical Operator we have -> IN, ANY, EXISTS, ALL
*/

-- IN Operator
-- Show the details of orders made by customers in Germany

SELECT
	*
FROM Sales.Orders
WHERE CustomerID IN 
				(SELECT
					CustomerID
				FROM Sales.Customers
				WHERE Country = 'Germany')