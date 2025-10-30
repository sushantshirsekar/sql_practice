-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- =============================================================
-- Tip 5 : Avoid applying functions to columns in WHERE clause 
-- =============================================================


-- Example 1
-- Bad Prctice
SELECT *
FROM Sales.Orders
WHERE LOWER(OrderStatus) = 'delivered'

-- Good Practice
SELECT *
FROM Sales.Orders
WHERE OrderStatus = 'Delivered'


-- Example 2
-- Bad Prctice
SELECT *
FROM Sales.Customers
WHERE SUBSTRING(FirstName, 1, 1) = 'A'

-- Good Practice
SELECT * 
FROM Sales.Customers
WHERE FirstName LIKE 'A%'


-- Example 3
-- Bad Practice
SELECT *
FROM Sales.Orders
WHERE YEAR(OrderDate) = 2025

-- Good Practice
SELECT *
FROM Sales.Orders
WHERE OrderDate BETWEEN '2025-01-01' AND '2025-12-31'