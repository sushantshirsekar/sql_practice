/* 
-> Intersect
-- Returns common data between two tables and 
removes duplicates
-- Order doesn't matter unlike Except
*/

SELECT 
	FirstName, 
	LastName
FROM Sales.Employees
INTERSECT
SELECT 
	FirstName, 
	LastName
FROM Sales.Customers