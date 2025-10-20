-- Task 18
-- Retrieve customer details abbreviated
-- Country Code
-- If we are using only one column in case st
-- then we can use quick format to avoid writing
-- repeated code as mentioned below for country

SELECT
	CustomerID,
	FirstName,
	Country,
	CASE Country
		WHEN 'Germany' THEN 'DE'
		WHEN 'USA' THEN 'US'
		ELSE 'Not Available'
	END CountryAbb
FROM SalesDB.Sales.Customers