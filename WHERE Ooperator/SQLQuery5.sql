-- Pattern Operator

-- Find all the customers whose name starts with m
-- Like Operator
SELECT * FROM customers
WHERE LOWER(first_name) LIKE 'm%'

-- Find all the customers having 'n' at the end of the name
SELECT * FROM customers
WHERE LOWER(first_name) LIKE '%n'

-- Find all the customers having 'r' in the first_name
SELECT * FROM customers
WHERE LOWER(first_name) LIKE '%r%'

-- Find all the customers having 'r at the third position of the name
SELECT * FROM customers
WHERE LOWER(first_name) LIKE '__r%'