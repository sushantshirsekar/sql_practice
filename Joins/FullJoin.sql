/* 
-> Full Join
-> Returns all rows from both tables
Q-> Get all the customers and all orders, even if there's no match.
*/

SELECT 
	c.id, 
	c.first_name, 
	o.order_id, 
	o.sales
FROM customers AS c
FULL JOIN orders as o
ON c.id = o.customer_id
