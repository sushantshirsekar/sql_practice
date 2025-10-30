-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- ==============================================================================
-- Tip 10 : Make sure to Index columns used in the ON clause
-- ==============================================================================

SELECT 
	c.FirstName,
	o.OrderID
FROM Sales.Orders o
INNER JOIN Sales.Customers c
ON c.CustomerID = o.CustomerID

CREATE NONCLUSTERED INDEX idx_Orders_CustomerID ON Sales.Orders(CustomerID)