-- ==============================================================
-- Tipe 17: Use Columnstore Index for Aggregations on Large Table
-- ==============================================================

SELECT CustomerID, COUNT(OrderID) AS OrderCount
FROM Sales.Orders
GROUP BY CustomerID

CREATE CLUSTERED COLUMNSTORE INDEX Idx_Orders_Columnstore ON Sales.Orders