-- ==========================================================================
-- Tipe 15: Use UNION ALL instead of using UNION | duplicates are acceptable
-- ==========================================================================

-- Bad Practice
SELECT CustomerID
FROM Sales.Orders
UNION
SELECT CustomerID
FROM Sales.OrdersArchive

-- Best Practice
SELECT CustomerID
FROM Sales.Orders
UNION ALL
SELECT CustomerID
FROM Sales.OrdersArchive