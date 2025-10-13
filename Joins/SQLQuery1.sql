-- Inner Join
-- Apply inner join customers and orders
/* It works like double loop, for each customers.id
we iterate through every element in orders.customer_id */
-- We can use inner join to recombine data and to filter data (check existence)
-- Three purposes to use join - recombine, data enrichment and check existence

SELECT 
	c.id,	-- Always mention from which table we're getting data
	c.first_name,
	o.order_id,
	o.sales
FROM customers as c	-- We can use alias for table names, especially when names are long
INNER JOIN orders as o
ON c.id = o.customer_id;