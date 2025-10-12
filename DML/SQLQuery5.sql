-- Moving data from one table to another
-- Insert using SELECT query

INSERT INTO persons(id, person_name, birth_date, email)
SELECT id, first_name, NULL, 'Unknown'
FROM customers

SELECT * FROM persons
