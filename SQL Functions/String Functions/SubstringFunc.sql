-- Substring function
-- returns specify part of a string
-- as provided

SELECT 
	first_name,
	SUBSTRING(TRIM(first_name), 2, LEN(first_name)) AS first_name_substr
FROM customers