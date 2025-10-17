-- Calculations on Date and time
-- DateAdd -> Adds or substracts days, months, years in Date
-- DateDiff -> Difference between two dates in days, months and years

SELECT
	OrderDate,
	DATEADD(month, 2, OrderDate) AS [Two Months Later],
	DATEADD(year, 3, OrderDate) AS [Three Years Later], 
	DATEADD(day, -10, OrderDate) AS [Ten Days Before], 
	DATEDIFF(day, OrderDate, ShipDate) AS [Differenct between Order and Ship]
FROM Sales.Orders

