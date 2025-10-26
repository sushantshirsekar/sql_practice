/* 
Temporary Tables
Tables Created using CREATE/INSERT and CTAS lives in the data\
permanently
But if we create a temporary table, and once we close the SSMS
then the tables get deleted making it memory friendly
Use-Cases ->
1] Data Transformations to remove duplicates, aggregate data and so on
The above process is known as ETL (Extract Transform Load)
Extract means creating temporary table
Transformation means removing duplicates, aggregating data
Load means loading the data into Data Warehouse
*/ 

-- Creating Temporary table
SELECT
	*
	INTO #OrdersTemp
FROM Sales.Orders

-- Deleting from temporary table
DELETE FROM #Order_Temp
WHERE OrderStatus = 'Delivered'

-- Storing Temporary table to DB (Permanent)
SELECT
	*
	INTO Sales.ShippedOrders
FROM #Order_Temp

SELECT
	*
FROM Sales.Shipped_Orders