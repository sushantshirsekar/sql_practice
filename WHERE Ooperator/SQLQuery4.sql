-- Membership Operator 

-- IN Operator and NOT IN Operator
-- Retrieve all customers in germany or uk
SELECT * FROM customers
WHERE LOWER(country) IN ('germany', 'usa')

-- LIKE Operator