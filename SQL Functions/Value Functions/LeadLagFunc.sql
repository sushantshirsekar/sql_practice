/* 
Lead and Lag use case -> 
Customer Retention
In order to analyze customer loyalty
rank customers based on average days between their orders 
*/

SELECT
CustomerID, 
AVG(order_days) avg_days,  
RANK() OVER(ORDER BY AVG(order_days)) rank_avg_days
FROM
(
SELECT
	OrderID,
	OrderDate,
	CustomerID,
	LEAD(OrderDate) 
		OVER(PARTITION BY CustomerID ORDER BY OrderDate) next_order,
	DATEDIFF(DAY, OrderDate, LEAD(OrderDate) OVER(PARTITION BY CustomerID ORDER BY OrderDate))
		order_days
FROM Sales.Orders
)t
WHERE order_days IS NOT NULL
GROUP BY CustomerID