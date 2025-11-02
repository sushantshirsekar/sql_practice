-- ==================================================
-- Tip 14: Check for Nested Loops and Use SQL HINTS
-- ==================================================

-- Bad Practice (check in execution plan, using nested loops or not)
SELECT 
	o.OrderID, 
	c.FirstName 
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.OrderID

-- Good Practice for having Big Table and small table
SELECT 
	o.OrderID, 
	c.FirstName 
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.OrderID
OPTION (HASH JOIN)