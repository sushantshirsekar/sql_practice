-- Delete Data inside table
-- Always use WHERE clause or you'll delete all the data

SELECT * FROM customers
WHERE id > 10

DELETE FROM customers
WHERE id > 10

--Delete all the data from table persons not the table
SELECT * FROM persons