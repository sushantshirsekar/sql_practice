-- Show the employee hirerachy by displaying each employee's
-- level within the organization

WITH cte_emp_level AS
(
	-- Anchor Query
	SELECT
		EmployeeID,
		FirstName, 
		ManagerID,
		1 as EmpLevel
	FROM Sales.Employees
	WHERE ManagerID IS NULL

	UNION ALL

	-- Recursive Query
	SELECT
		e.EmployeeID,
		e.FirstName,
		e.ManagerID, 
		EmpLevel = EmpLevel + 1
	FROM sales.Employees e
	INNER JOIN cte_emp_level as cel
	ON e.ManagerID = cel.EmployeeID
)

-- Main Query
SELECT
	*
FROM cte_emp_level