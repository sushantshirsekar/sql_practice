-- ===========================================
-- Tip 13: Use Union Instead of OR in Joins
-- ===========================================

-- Bad Practice 

SELECT 
	o.OrderID,
	c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
OR c.CustomerID = o.SalesPersonID

-- Good Practicie
SELECT 
	o.OrderID,
	c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
UNION 
SELECT 
	o.OrderID,
	c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.SalesPersonID