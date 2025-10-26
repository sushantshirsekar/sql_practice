-- Varaibles in Stored Procedure
-- Placeholder to store value and access later


ALTER PROCEDURE Sales.GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN

	DECLARE @TotalCustomers INT, @AvgScore FLOAT ; 

	SELECT
		@TotalCustomers = COUNT(*),
		@AvgScore = AVG(Score)
	FROM Sales.Customers
	WHERE Country = @Country;

	PRINT 'Total Customers from ' + @Country + ' is ' + CAST(@TotalCustomers AS NVARCHAR);
	PRINT 'Avg Sales from ' + @Country + ' is ' + CAST(@AvgScore AS NVARCHAR);

	SELECT
		COUNT(*) TotalOrders, 
		SUM(o.Sales) TotalSales
	FROM Sales.Orders o
	JOIN Sales.Customers c
	ON c.CustomerID = o.CustomerID
	WHERE c.Country = @Country;

END

EXEC Sales.GetCustomerSummary @Country = 'Germany'