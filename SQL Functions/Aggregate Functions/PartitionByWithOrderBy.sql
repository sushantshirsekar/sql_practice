-- Partiton By + Order By
-- Rank each order based on their sales from
-- Highest to lowest, 
-- additionally provide details such
-- OrderID and OrderDate

SELECT 
	OrderID, 
	OrderDate, 
	Sales,
	RANK() OVER(ORDER BY Sales DESC) SalesRanked
FROM SalesDB.Sales.Orders