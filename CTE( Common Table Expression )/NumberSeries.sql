/* Recursive CTE
Repeats the query until a certain condition is met
Recursive query has two types of queries anchor and recursive
*/

-- Generate a sequence of numbers from 1-20

WITH number_series AS
(
	SELECT 1 AS my_number
	UNION ALL
	-- Recursive Query
	SELECT 
		my_number = my_number + 1
	FROM number_series
	WHERE my_number < 200
)

SELECT 
	*
FROM number_series
OPTION (MAXRECURSION 200)