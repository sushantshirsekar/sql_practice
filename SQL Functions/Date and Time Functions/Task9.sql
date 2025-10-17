-- Task9
-- Show CreationTime using the following format
-- Day Wed Jan Q1 2025 12:34:56 PM

SELECT 
	OrderID,
	CreationTime, 
	'Day ' + FORMAT(CreationTime, 'ddd MMM ') + 
	'Q'+DATENAME(QUARTER, CreationTime) 
	+ FORMAT(CreationTime, 'yyyy hh:mm:ss tt')  CustomFormat
FROM Sales.Orders