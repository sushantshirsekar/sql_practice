-- Step 5 -> Create the Partitioned Tables 

CREATE TABLE Sales.Orders_Partitioned
(
	OrderID INT, 
	OrderDate DATE, 
	Sales INT
) ON SchemePartitonByYear (OrderDate)
