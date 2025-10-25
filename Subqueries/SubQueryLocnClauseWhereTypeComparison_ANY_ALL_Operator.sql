/*
Sub-Query in Location/Clauses type in Where
Comparison Any/All Operator
ANY -> one of the, like salary of Marry
should be higher than any of the male employee
ALL -> all of the above, like salary of Marry
should be higher than all of the female employee
*/

-- Find Female employees whose salaries are
-- greater than the salaries of ANY of the male employees


SELECT
	EmployeeID,
	FirstName,
	Gender,
	Salary
FROM Sales.Employees
WHERE Gender = 'F' 
AND 
Salary > ANY (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');

-- Find Female employees whose salaries are
-- greater than the salaries of ALL of the male employees

SELECT
	EmployeeID,
	FirstName,
	Gender,
	Salary
FROM Sales.Employees
WHERE Gender = 'F' 
AND 
Salary > ALL (SELECT Salary FROM Sales.Employees WHERE Gender = 'M');