-- ==========
-- SQL Hints
-- ==========

-- Commands you add to a query to force the database
-- to run in a specific way for better performance

-- Tips -> Use hints in all project environments (dev, prod)
-- it might work great in dev and won't work in prod
-- Hints are quick fixes (work around solution) not the permanent fix
-- For temporary purposes you can use it but for permanent purpose 
-- analyze the slow working query


SELECT 
	o.Sales, 
	c.Country
FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS c WITH (INDEX([PK_customers]))
ON c.CustomerID = o.CustomerID
-- OPTION (HASH JOIN)