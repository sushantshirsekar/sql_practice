-- Multiple Statements in a Stored Procedure
-- Find total number of sales and total number of orders

ALTER PROCEDURE Sales.GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN

	SELECT
		COUNT(*) TotalCustomers,
		AVG(Score) AvgScore,
		@Country CountryName
	FROM Sales.Customers
	WHERE Country = @Country;

	SELECT
		COUNT(*) TotalOrders, 
		SUM(o.Sales) TotalSales
	FROM Sales.Orders o
	JOIN Sales.Customers c
	ON c.CustomerID = o.CustomerID
	WHERE c.Country = @Country;

END

EXEC Sales.GetCustomerSummary @Country = 'Germany'