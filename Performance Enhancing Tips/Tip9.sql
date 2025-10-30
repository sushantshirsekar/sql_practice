-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ==============================================================================
-- Tip 9 : Use Explicit Join (ANSI Join) Instead of Implicit Join (non-ANSI Join)
-- ==============================================================================

-- Bad Practice ANSI Join
SELECT 
	o.OrderID,
	c.FirstName
FROM Sales.Customers c, Sales.Orders o
WHERE c.CustomerID = o.CustomerID

-- Good Practice
SELECT o.OrderID, c.FirstName
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID