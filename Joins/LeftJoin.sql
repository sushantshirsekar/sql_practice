/* 
-> Left Join
-> Returns all the data from right and only matching data from left
-> Left table primary source of data
Q- Get all the customers along with their orders 
including those without orders
-> Order of the tables is important
-> If we change the order of tables then all data 
of orders table will be displayed rather than customers
Execution -> Same it will iterate through all the orders for 
each id in customers but before iterating it will provide data of customers
to ouput and then start iterating for remaining data if it gets
then it enters and if it doesn't then NULL values are inserted
-> Single customer can have multiple orders
-> Recombine data, Data Enrichment, Check Existence (with WHERE)
*/

SELECT 
	c.id, 
	c.first_name,
	o.order_id, 
	o.sales
FROM 
customers AS c
LEFT JOIN orders AS o
ON c.id = o.customer_id