-- Comparison Operators

-- Retrieve all customers from Germany
SELECT * FROM customers
WHERE LOWER(country) != 'germany';

-- Retrieve all the customers having score > 500
SELECT * FROM customers
WHERE score >= 500;

-- Retrieve all the customers having score < 500
SELECT * FROM customers
WHERE score <= 500;