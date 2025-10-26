/*
Stored Procedure
If a certain task is to be done on daily basis
Or on regular basis. We can use stored procedure to execute the task. 
Python is an alternative for stored procedure to execute code.
And Baraa recommends to use Python only because of Stored procedure complexity.
*/

-- Step1 : Write a query 
-- For US Customers Find total number of Customers and Average Score

-- Define Stored Procedure 
CREATE PROCEDURE Sales.GetCustomerSummary AS
BEGIN
	SELECT
		COUNT(*) TotalCustomers,
		AVG(Score) AvgScore
	FROM Sales.Customers
	WHERE Country = 'USA'
END

-- Execute Stored Procedure

EXEC Sales.GetCustomerSummary

-- Parameters used in Stored Procedure
-- For German Customers Find total number of customers and average score
-- Alter Stored Procedure
ALTER PROCEDURE Sales.GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN
	SELECT
		COUNT(*) TotalCustomers,
		AVG(Score) AvgScore,
		@Country CountryName
	FROM Sales.Customers
	WHERE Country = @Country
END

EXEC Sales.GetCustomerSummary @Country = 'Germany'

DROP PROCEDURE Sales.GetCustomerGermany

