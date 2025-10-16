-- Date & Time Functions
-- GetDate returns current date and time
-- Part Extraction -> Day, Month, Year, DatePart,
-- DateName, DateTrunc, EOMonth
-- Day, Month Year -> Returns day, month, year from a date always (INT)

-- DatePart
-- Returns quarter and week of date
-- Also returns month, year and day

-- DateName
-- Returns MonthName, Dayame (September, Thursday)(String)

-- DATE_TRUNC is used to trim a datetime value to a specific precision.
-- It resets all smaller units: e.g. truncating to hour sets minutes and seconds to 00.
-- Truncating to day sets time to 00:00:00, month sets date to 1st,
-- and year sets month/day to Jan 1.
-- Useful for grouping data by hour, day, month, etc.

-- EOMonth
-- Returns end of the month from date


SELECT 
	OrderID,
	OrderDate,
	CreationTime,
	YEAR(CreationTime) creation_year,
	MONTH(CreationTime) creation_month,
	DAY(CreationTime) creation_day,
	DATEPART(week, CreationTime) AS week_dp,
	DATEPART(quarter, CreationTime) AS quarter_dp,
	DATEPART(hour, CreationTime) AS hour_dp,
	DATENAME(month, CreationTime) AS month_dn,
	DATENAME(weekday, CreationTime) AS week_day_dn
FROM Sales.Orders

-- Count number of orders using month wise

SELECT 
	--CreationTime,
	--DATETRUNC(minute, CreationTime) as minute_dt,
	--DATETRUNC(hour, CreationTime) as hour_dt, 
	DATETRUNC(month, CreationTime), 
	COUNT(*) total_orders
FROM Sales.Orders
GROUP BY DATETRUNC(month, CreationTime)

SELECT
	CreationTime, 
	EOMONTH(CreationTime) AS end_of_month,
	CAST(DATETRUNC(month, CreationTime)AS date) AS start_of_month
FROM Sales.Orders