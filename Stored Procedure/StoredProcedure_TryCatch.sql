-- Stored Procedure Error Handling (Try Catch)
-- Introducing Error in the program to implement Try Catch

-- =========================================
-- Stored Procedure TRY CATCH IMPLEMENTATION
-- =========================================

ALTER PROCEDURE Sales.GetCustomerSummary @Country NVARCHAR(50) = 'USA' AS
BEGIN
	BEGIN TRY

		-- =================================
		-- Step 1 : Prepare and CleanUp Data
		-- =================================

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

		-- ========================
		-- Step 2 : Generate Report
		-- ========================

		-- Calculating avg score and total orders based on Country

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
			SUM(o.Sales) TotalSales,
			1/0
		FROM Sales.Orders o
		JOIN Sales.Customers c
		ON c.CustomerID = o.CustomerID
		WHERE c.Country = @Country;

	END TRY
	
	BEGIN CATCH
		PRINT ('Error Message ' + ERROR_MESSAGE());
		PRINT ('Error Number ' + CAST(ERROR_NUMBER() AS NVARCHAR )); 
		PRINT ('Error Line ' + CAST(ERROR_LINE() AS NVARCHAR ));
		PRINT ('Error Procedure ' + ERROR_PROCEDURE());
	END CATCH
END

-- ==========================
-- Step 3 : Execute Procedure
-- ==========================

EXEC Sales.GetCustomerSummary @Country = 'Germany'
