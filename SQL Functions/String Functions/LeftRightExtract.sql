-- String Extraction -> Left, Right
-- Returns number of character mentioned
-- from left or right of the string

SELECT 
	first_name, 
	LEFT(TRIM(first_name), 2) AS left_first_name,
	RIGHT(TRIM(first_name), 2) AS right_first_name
FROM customers