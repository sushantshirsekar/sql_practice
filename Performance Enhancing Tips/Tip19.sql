-- ========================================
-- Tip 19: Avoid IN operator for filtering
-- ========================================


-- Best Practices Subqueries

-- JOINS vs EXISTS vs IN

-- JOIN (Best Practice if the Performance equal to EXISTS)
SELECT
	o.OrderID, 
	o.Sales
FROM Sales.Orders o
INNER JOIN Sales.Customers c
ON o.CustomerID = c.CustomerID
WHERE c.Country = 'USA'

-- EXISTS (Best Practice : Use it for Large Tables)
SELECT o.OrderID, o.Sales
FROM Sales.Orders o
WHERE EXISTS (
	SELECT 1
	FROM Sales.Customers c
	WHERE c.CustomerID = o.CustomerID
	AND c.Country = 'USA'
)

-- IN (Bad Practice)
SELECT 
	o.OrderID, o.Sales
FROM Sales.Orders o
WHERE o.CustomerID IN (
	SELECT CustomerID
	FROM Sales.Customers c
	WHERE Country = 'USA'
)