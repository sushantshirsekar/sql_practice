-- ==============================================
-- Tip 12: Aggregate Before Joining (Big tables)
-- ==============================================

-- Best practice for Small-Medium Tables
-- Grouping and Joining

SELECT 
	c.CustomerID,
	c.FirstName, 
	COUNT(o.OrderID) AS OrderCount
FROM Sales.Customers c
INNER JOIN Sales.Orders o
ON c.CustomerID = o.OrderID
GROUP BY c.CustomerID, c.FirstName

-- Best Practice for Big Tables
-- Pre-aggregated Subquery

SELECT 
	c.CustomerID,
	c.FirstName,
	o.OrderCount
FROM Sales.Customers c
INNER JOIN (
	SELECT 
		CustomerID, 
		COUNT(OrderID) AS OrderCount
	FROM Sales.Orders
	GROUP BY CustomerID
) o
ON c.CustomerID = o.CustomerID

-- Bad Practice
-- Correlated Subquery

SELECT
	c.CustomerID,
	c.FirstName,
	(SELECT COUNT(o.OrderID)
	FROM Sales.Orders o
	WHERE o.CustomerID = c.CustomerID) AS OrderCount
FROM Sales.Customers c