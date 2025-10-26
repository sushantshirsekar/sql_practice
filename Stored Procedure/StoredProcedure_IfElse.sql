-- Control Flow in Stored Procedure
-- If Else Statements
-- Cleanup the data, update null values to zero

ALTER PROCEDURE Sales.GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN
	-- Prepare and CleanUp Data
	PRINT 'Updating Null Values to Zero' 
	IF EXISTS(SELECT 1 FROM Sales.Customers WHERE Score IS NULL AND Country = @Country)
		BEGIN
			UPDATE Sales.Customers
			SET Score = 0
			WHERE Score IS NULL AND Country = @Country;
		END
	ELSE
		BEGIN
			PRINT 'No Null scores found' 
		END

	-- Generate Report
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