-- NullIf
-- Compares two expressions 
-- And returns null if equal and first vlaue for not equal

SELECT 
	CustomerID, 
	FirstName, 
	NULLIF(LastName, 'Brown') RandomThing
FROM Sales.Customers