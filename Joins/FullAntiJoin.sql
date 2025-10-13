/* 
-> Full Anti Join
Returns that don't match in either Tables
Q-> Find customers without orders 
and orders without customers
*/

SELECT 
	* 
FROM customers AS c
FULL JOIN orders AS o
ON c.id = o.customer_id
WHERE 
	c.id IS NULL OR 
	o.customer_id IS NULL