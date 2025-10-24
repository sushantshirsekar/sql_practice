/* 
Value Functions -> Use to access data from another row
Below are the mentioned Value Functions
Lead -> Data from next row () 
(Expression, Partition Clause, Order By(Must), Frame Clause(Not Allowed))
Lag -> Data from previous row
(Expression, Partition Clause, Order By(Must), Frame Clause(Not Allowed))
First_Value -> First value of the row
(Expression, Partition Clause, Order By(Must), Frame Clause(optional))
Last_Value -> Last value of the row
(Expression, Partition Clause, Order By(Must), Frame Clause(Should Use))
*/ 
-- Time Series Analysis (Lead, Lag use-case) -> Month over month, Year over year
-- Analyze month over month performance by finding the percentage change
-- in sales between current and previous months

SELECT
	*,
	curr_month - prev_month AS MoM_change,
	ROUND(CAST((curr_month - prev_month) AS FLOAT) / prev_month * 100 ,1) 
	AS MoM_percentage_change
FROM
(
	SELECT
		MONTH(OrderDate) order_month,
		SUM(Sales) AS curr_month,
		LAG(SUM(Sales)) OVER(ORDER BY MONTH(OrderDate)) prev_month
	FROM Sales.Orders
	GROUP BY 
		MONTH(OrderDate)
)t
