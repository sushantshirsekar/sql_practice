/* Views Use-Case
Data Security
Use Views to enforce security and protect sensitive data
by hiding rows and columns
*/

/* Views other Use-Cases
1] Flexibility and Dynamic
2] Data marts in Data warehouse System (Important)
Data Marts is basically converting big data warehouse into
Small Data Marts and these marts are called Virtual Layer
*/

-- Provide a view for EU sales team
-- that combines details from all tables
-- and excludes data related to USA

CREATE VIEW Sales.V_Order_Details_EU AS
(
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
	WHERE c.Country != 'USA'
)

SELECT * FROM Sales.V_Order_Details_EU