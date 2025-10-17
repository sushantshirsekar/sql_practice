-- Date Validation 
-- IsDate -> Return 1 or 0 
-- IsDate accepts string
-- It understands only standard format -> YYYY-MM-DD

SELECT 
	ISDATE('123'),
	ISDATE('2025-10-18'),
	ISDATE('18-10-2025'),  
	ISDATE('2025'), 
	ISDATE('10')
--FROM Sales.Orders

-- UseCase of IsDate 
SELECT
	OrderDate,
	ISDATE(OrderDate), 
	CASE WHEN ISDATE(OrderDate) = 1 THEN CAST(OrderDate AS DATE)
	ELSE '9999-01-01'
	END NewOrderDate
FROM
(
	SELECT '2025-08-20' AS OrderDate UNION
	SELECT '2025-08-21' UNION
	SELECT '2025-08-23' UNION
	SELECT '2025-08'
)t