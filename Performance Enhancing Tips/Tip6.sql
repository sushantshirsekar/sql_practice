-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- =============================================================
-- Tip 6 : Avoid leading Wild Cards as they prevent Index Usage
-- =============================================================

-- Using leading wildcard would avoid Index usage, where as trailing won't affect

-- Bad Practice
SELECT *
FROM Sales.Customers
WHERE LastName = '%Gold%'


-- Good Practice
SELECT *
FROM Sales.Customers
WHERE LastName = 'Gold%'
