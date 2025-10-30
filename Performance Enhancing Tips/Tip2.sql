-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ==============================================
-- Tip 2 : Avoid unnecessary DISTINCT & ORDER BY
-- ==============================================


-- Bad Practice
SELECT DISTINCT
	FirstName
FROM Sales.Customers
ORDER BY FirstName

-- Good Practice
SELECT
	FirstName
FROM Sales.Customers