/* 
SQL Functions
-- Single Row Functions
i. String, ii. Numeric, 
iii. Date & Time, iv. Null
-- Multi-Row Functions
i. Aggregate ii. Window(advanced)
*/

-- String Functions
-- Manipulation -> Concat, Upper, Lower, Trim, replace
-- Calculation -> Len
-- String Extraction -> Left, Right, Substring

-- Concat -> Combines multiple strings into one value

-- Show list of customers' first names together with country name in one column


SELECT
	first_name, 
	country,
	CONCAT(first_name, ' ' , country) AS name_country
FROM customers
