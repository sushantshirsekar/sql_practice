-- Upper and Lower Functions of string
-- Upper('sushant') - 'SUSHANT'
-- Lower('SUSHANT' - 'sushant'

SELECT 
	LOWER(first_name) AS lower_name,
	UPPER(first_name) AS up_name
FROM customers