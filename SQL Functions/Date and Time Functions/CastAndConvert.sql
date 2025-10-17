-- Data Type Converting Functions 
-- Convert(), Cast()
/*
Format -> Any type to only string, Date and time and numbers
Cast -> Any type to any type, no formatting
Convert -> Any type to any type, formates only date and time
*/

SELECT 
CONVERT(INT, '123') AS [String to INT Convert],
CONVERT(DATE, '2025-10-17') AS [String to Date Convert], 
CreationTime, 
CONVERT (DATE, CreationTime) AS [DATETIME to Date],
CONVERT (VARCHAR, CreationTime, 32) AS [USA Std. to Style:32],
CONVERT (VARCHAR, CreationTime, 34) AS [EURO Std. to Style:34]

FROM Sales.Orders


SELECT 
	CAST('123' AS INT) AS [String to Int],
	CAST(123 AS VARCHAR) AS [Int to String],
	CAST('2025-08-20' AS DATE) AS [String to Date],
	CAST('2025-08-20' AS DATETIME2) AS [String to Date],
	CreationTime, 
	CAST(CreationTime AS DATE) AS [DateTime to Date]
FROM Sales.Orders