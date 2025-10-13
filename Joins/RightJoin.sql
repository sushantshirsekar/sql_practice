/*
-> Right Join
-> Returns all the data from left and only matching data from right
Q-> Get all customers along with their orders, 
including orders without matching customers.
*/

SELECT 
	c.id, 
	c.first_name,
	o.order_id,
	o.sales
FROM customers as c
RIGHT JOIN orders as o
ON c.id = o.customer_id