-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ====================================================================
-- Tip 8 : Understand the Speed of Joins & Use INNER JOIN When possible
-- ====================================================================

-- Worst Perfromance 
SELECT 
	c.FirstName,
	c.LastName, 
	o.OrderID
FROM Sales.Customers c
OUTER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID


-- Slightly Slower Performance
SELECT 
	o.OrderID,
	c.CustomerID,
	c.FirstName
FROM Sales.Customers c
LEFT JOIN Sales.Orders o
ON o.CustomerID = c.CustomerID

SELECT 
	o.OrderID,
	c.CustomerID,
	c.FirstName
FROM Sales.Customers c
RIGHT JOIN Sales.Orders o
ON o.CustomerID = c.CustomerID


-- Best Performance
SELECT 
	o.OrderID,
	c.CustomerID,
	c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON o.CustomerID = c.CustomerID
