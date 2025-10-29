-- ===============
-- RowStore Index
-- ===============

-- To check the speed we are going to use AdventureWorksDW2022

-- Heap Structure

SELECT * 
INTO FactInternetSales_HP
FROM FactInternetSales

-- Row Store Index

SELECT * 
INTO FactInternetSales_RS
FROM FactInternetSales

CREATE CLUSTERED INDEX idx_FactInternetSales_RS_Pk
ON FactInternetSales_RS(SalesOrderNumber, SalesOrderLineNumber)

-- Column Store Index

SELECT * 
INTO FactInternetSales_CS
FROM FactInternetSales

CREATE CLUSTERED COLUMNSTORE INDEX idx_FactInternetSales_CS
ON FactInternetSales_CS







SELECT
	*
FROM FactInternetSales