-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ==============================================================================
-- Tip 11 : Filter Before Joining (Big Tables)
-- ==============================================================================

-- If you have big tables, try to use subquery like in third example 
-- or try to use CTE for future enhances

-- Filter After Join (WHERE)
SELECT
	c.FirstName, o.OrderID
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderStatus = 'Delivered'

-- Filter During Join (ON)
SELECT 
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON C.CustomerID = o.CustomerID 
AND o.OrderStatus = 'Delivered'

-- Filter Before Join (SUBQUERY)
SELECT
	c.FirstName, o.OrderID
FROM Sales.Customers c
WHERE o.OrderStatus = 'Delivered'
INNER JOIN 
(
	SELECT 
	OrderID, CustomerID
	FROM Sales.Orders
	WHERE OrderStatus = 'Delivered'
) o
ON c.CustomerID = o.CustomerID

