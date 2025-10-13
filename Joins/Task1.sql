/*
--**TASK**--
Q-> Get all customers along with their orders, 
including orders without matching customers
using LEFT JOIN only
*/

SELECT 
	c.id,
	c.first_name,
	o.order_id,
	o.sales
FROM orders AS o
LEFT JOIN customers AS c
ON o.customer_id = c.id