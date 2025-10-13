/* 
--**Task3**--
Get all customers along with their orders, 
but only for customers who have placed an order
(without using INNER JOIN)
*/

SELECT 
	* 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NOT NULL
-- WHERE c.id = o.customer_id this is also a possible solution