/* 
-> LEFT ANTI JOIN
Returns rows from left that has NO MATCH in right
*/

SELECT * 
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id
WHERE o.customer_id IS NULL
