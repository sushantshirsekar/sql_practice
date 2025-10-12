-- Insert new customer in customers table

INSERT INTO customers (id, first_name)
VALUES (12, 'Professor')
/* Other two values can be null so can add only two columns */
/*		(6, 'Sushant', 'India', 1000),
		(7, 'Anna', 'USA', NULL),
		(8, 'John', NULL, 100),
		(9, 'USA', 'Max', 200) -- Incorrect value entered to demonstrate
*/
/* Order of columns and values should be the same */ 
SELECT * FROM customers