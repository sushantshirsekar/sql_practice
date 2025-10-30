-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- *******************************************************************************************************
-- Golden Rule : ALways check execution plan to cofirm performance improvements when optimizing your query
-- *******************************************************************************************************

-- ============================================
-- Tip 1 : Select Only What You Need 
-- ============================================


-- Bad Practice
SELECT * FROM Sales.Customers

-- Good Practice
SELECT
	CustomerID,
	FirstName, 
	LastName
FROM Sales.Customers