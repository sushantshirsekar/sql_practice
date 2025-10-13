/* 
-> Union All
-- Doesn't removes duplicates
-- Better performance than UNION as it doesn't check for duplicates
*/

SELECT 
	FirstName, 
	LastName
FROM Sales.Customers
UNION ALL
SELECT 
	FirstName, 
	LastName
FROM Sales.Employees