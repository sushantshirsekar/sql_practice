/* Top N-Analysis Row_Number -> UseCase
Find the top highest sales for each product
*/
SELECT * FROM
(SELECT
	OrderID, 
	ProductID, 
	Sales,
	ROW_NUMBER() OVER(PARTITION BY ProductID ORDER BY Sales DESC) rank_by_product
FROM Sales.Orders)t WHERE rank_by_product = 1