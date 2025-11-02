-- ============================================
-- Tip 20: Avoid Redundant Logic in Your Query
-- ============================================

-- Bad Practice ( We are scanning employees table 4 times )
SELECT EmployeeID, FirstName, 'Above Average' Status
FROM Sales.Employees
WHERE Salary > (SELECT AVG(Salary) FROM Sales.Employees)
UNION ALL
SELECT EmployeeID, FirstName, 'Below Average' Status
FROM Sales.Employees
WHERE Salary < (SELECT AVG(Salary) FROM Sales.Employees)

-- Good Practice
SELECT 
	EmployeeID,
	FirstName,
	CASE
	WHEN Salary > AVG(Salary) OVER() THEN 'Above Average'
	WHEN Salary < AVG(Salary) OVER() THEN 'Below Average'
	END SalaryStatus
FROM Sales.Employees
