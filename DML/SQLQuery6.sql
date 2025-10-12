-- Update data
-- Always use WHERE clause to avoiding UPDATE data of whole table

SELECT * FROM customers
WHERE score IS NULL

UPDATE customers
SET score = 0
WHERE id = 7

--Update data of customer 10, country uk, score to 1200
UPDATE customers
SET score = 1200,
	country = 'UK'
WHERE id = 10

--Update data of all customers having score null to 0
UPDATE customers
SET score = 0
WHERE score IS NULL