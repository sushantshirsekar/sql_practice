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
-- Logical Operators
-- Find the products that have higher price than the 
-- average price

SELECT
	*, 
	(SELECT AVG(Price) FROM Sales.Products) avg_price
FROM Sales.Products
WHERE Price > (SELECT AVG(Price) FROM Sales.Products)