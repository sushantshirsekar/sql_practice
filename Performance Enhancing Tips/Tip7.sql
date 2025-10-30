-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ========================================
-- Tip 7 : Use IN instead of Multiple OR
-- ========================================

-- Bad Practice
SELECT 
	OrderID,
	OrderDate,
	CustomerID,
	Sales
FROM Sales.Orders
WHERE CustomerID = 1 OR CustomerID = 2 OR CustomerID = 3

-- Good Practice
SELECT 
	OrderID,
	OrderDate,
	CustomerID,
	Sales
FROM Sales.Orders
WHERE CustomerID IN (1,2,3)