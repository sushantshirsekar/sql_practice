-- Task 17
-- Retrieve Employee details with Gender
-- Displayed as full text

SELECT
	EmployeeID, 
	FirstName, 
	LastName, 
	Gender, 
	CASE
		WHEN Gender = 'M' THEN 'Male'
		WHEN Gender = 'F' THEN 'Female'
		ELSE 'Not Available'
	END GenderFullForm
FROM SalesDB.Sales.Employees