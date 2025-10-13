/* 
--**Task2**--
Get all the orders that don't have
matching customers using left join
*/

SELECT 
* FROM orders as o
LEFT JOIN customers as c 
ON c.id = o.customer_id
WHERE c.id IS NULL