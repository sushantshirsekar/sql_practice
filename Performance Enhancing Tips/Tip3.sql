-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ==============================================
-- Tip 3 : For Exploration Purpose, Limit Rows!
-- ==============================================


-- Bad Practice
SELECT
	OrderID,
	Sales
FROM Sales.Orders

-- Good Practice
SELECT TOP 5
	OrderID,
	Sales
FROM Sales.Orders