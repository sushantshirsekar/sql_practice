-- ===================================================================
-- Tipe 18: Pre-Aggregate Data and Store it in new Table for Reporting
-- ===================================================================

-- Let's Say this query takes 5 mins to execute
-- During Presentation we can't let it take 5 mins
-- We store it in temporary table so that it can be accessed quickly

-- Why it takes more time? 
-- Because it is aggregating data

SELECT 
	MONTH(OrderDate) OrderYear,
	SUM(Sales) AS TotalSales
INTO Sales.SalesSummary
FROM Sales.Orders
GROUP BY MONTH(OrderDate)

SELECT OrderYear, TotalSales FROM Sales.SalesSummary