/* 
-> Except
-- Returns all distinct rows present only in table 1
-- Doesn't include common data as well as table 2 data
-- Need to consider order of queries
*/

SELECT 
	FirstName, 
	LastName
FROM Sales.Employees
EXCEPT
SELECT 
	FirstName, 
	LastName
FROM Sales.Customers