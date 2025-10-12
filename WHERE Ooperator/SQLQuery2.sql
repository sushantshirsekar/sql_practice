-- Logical Operators

-- Retreive all the customers having score > 500 and country = usa
-- AND operator
SELECT * FROM customers
WHERE score > 500 AND LOWER(country) = 'usa'

-- Retreive all the customers having score > 500 or country = germany
-- OR operator
SELECT * FROM customers
WHERE score > 500 OR LOWER(country) = 'usa'

--Retrieve customers having score not less than 500
-- NOT operator
SELECT * FROM customers
WHERE NOT score < 500