-- ============================================
-- Performance Enhancing Tips
-- ============================================

-- =============================================================================
-- Tip 4 : Create nonclustered Index on frequently used Columns in WHERE clause
-- =============================================================================


SELECT * FROM Sales.Orders WHERE OrderStatus = 'Delivered'

CREATE NONCLUSTERED INDEX Idx_Orders_OrderStatus ON Sales.Orders(OrderStatus)