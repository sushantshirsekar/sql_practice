/* 
 Task 15
 Create a column in which we have price = Quantity / Sales
 This is the usecase to avoid dividing by Zero
 */

 SELECT 
	OrderID, 
	Sales, 
	Quantity, 
	Sales / NULLIF(Quantity, 0) AS Price
FROM SalesDB.Sales.Orders