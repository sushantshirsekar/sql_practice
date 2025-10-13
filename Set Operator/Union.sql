/* Set Operator
Between two select clauses 
Rule 1 - Order by can be used once and at the end 
Rule 2 - Must have an same number of columns in query
Rule 3 - Two queries must have data type also same when using 
Set Operator
Rule 4 - Order of columns must be same
example - Col1 Int Col2 Varchar
Col1 Varchar Col2 Int, -> This will throw error
Rule 5 - Aliases for columns should be changed from first 
queries it defines output 
Rule 6 - INformation mapping should be same 
Example -> Table 1 - fname lname
Table 2 - lname fname
The above example is incorrect we do satisfy all the rules
till 5 but we shouldn't map lname with fname
*/

-- Union -> All distinct data removes duplicates and merges


SELECT 
	FirstName, 
	LastName
FROM Sales.Customers
UNION
SELECT 
	FirstName, 
	LastName
FROM Sales.Employees


