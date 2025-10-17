-- Task10 
-- Calculate the age of Employees

SELECT 
	EmployeeID, 
	BirthDate, 
	DATEDIFF(YEAR, BirthDate, GETDATE()) AS Age
FROM Sales.Employees