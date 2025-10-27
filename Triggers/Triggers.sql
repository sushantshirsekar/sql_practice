/* Triggers
Three types of triggers -> 
1] DML, 2] DDL 3] Loggon
In DML we have more two types of triggers -> 
After and Instead Of
*/

-- =============================
-- Triggers Use-Case -> Logging
-- =============================

-- ===================
-- Step 1 -> Log Table
-- ===================

CREATE TABLE Sales.EmployeeLogs(
	LoginId INT IDENTITY (1,1) PRIMARY KEY, 
	EmployeeID INT,
	LogMessage VARCHAR(255),
	LogDate DATE
)

-- ========================
-- Step 2 -> Create Trigger
-- ========================

CREATE TRIGGER trg_AfterEmployeeInsert ON Sales.Employees
AFTER INSERT
AS 
BEGIN
	INSERT INTO Sales.EmployeeLogs (EmployeeID, LogMessage, LogDate) 
	SELECT
		EmployeeID, 
		'New Employee Added : ' + CAST(EmployeeID AS VARCHAR),
		GETDATE()
	FROM INSERTED
END

-- ========================================================
-- Step 3 -> Insert Data into Employee to make trigger work
-- ========================================================

INSERT INTO Sales.Employees
VALUES(
	7,
	'Mitesh', 
	'Patkar', 
	'Marketing',
	'1996-05-28', 
	'M',
	60000, 
	4
)
SELECT * FROM Sales.EmployeeLogs