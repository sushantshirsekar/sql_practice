/* 
Is Null Anti Joins Use case
Task 16
List all details for customers who haven't placed any orders
*/ 

SELECT 
	c.*, 
	o.OrderID
FROM SalesDB.Sales.Customers AS c
LEFT JOIN SalesDB.Sales.Orders AS o
ON c.CustomerID = o.CustomerID
WHERE o.CustomerID IS NULL

--SELECT * FROM SalesDB.Sales.Orders