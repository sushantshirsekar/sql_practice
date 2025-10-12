-- Range Operator

--BETWEEN Operator
-- Customers having score between 100 and 500
SELECT * FROM customers
WHERE score BETWEEN 100 AND 500 -- 100 and 500 are inclusive

SELECT * FROM customers
WHERE score>=100 AND score <= 500 -- 100 and 500 are inclusive
