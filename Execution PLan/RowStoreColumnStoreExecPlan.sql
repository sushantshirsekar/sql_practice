-- ========================================
-- Row Store vs Column Store Execution Plan
-- ========================================

-- Column Store enhances performance compared to rowstore 


SELECT
	p.EnglishProductName, 
	SUM(SalesAmount) TotalSales
FROM FactResellerSales as s
JOIN DimProduct as p
ON s.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName


SELECT
	p.EnglishProductName, 
	SUM(SalesAmount) TotalSales
FROM FactResellersSales_HP as s
JOIN DimProduct as p
ON s.ProductKey = p.ProductKey
GROUP BY p.EnglishProductName

CREATE CLUSTERED COLUMNSTORE INDEX idx_FactResellersSales_CS
ON FactResellersSales_HP

