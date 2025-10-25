/* View Use_case
Hide Complexity
Views can be used to hide complexity
*/

-- Provide a view that combines details from
-- orders, products, customers and employees


CREATE VIEW Sales.V_Order_Details AS (
	SELECT
		o.OrderID,
		o.OrderDate,
		p.Product,
		p.Price,
		COALESCE(c.FirstName,'') + ' ' + COALESCE(c.LastName,'') CustomerName,
		c.Country,
		COALESCE(e.FirstName,'') + ' ' + COALESCE(e.LastName,'') SalesPersonName,
		e.Department,
		o.Quantity,
		o.Sales
	FROM Sales.Orders o
	LEFT JOIN Sales.Products p
	ON o.ProductID = p.ProductID
	LEFT JOIN Sales.Customers c
	ON c.CustomerID = o.CustomerID
	LEFT JOIN Sales.Employees e
	ON o.SalesPersonID = e.EmployeeID
)


SELECT * FROM Sales.V_Order_Details
