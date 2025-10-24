/* 
Percentage based ranking
CUME_DIST -> Distributes % based on Position in the table
Inclusive
PERCENT_RANK() -> Distributes % based on Position in the table
Exclusive
*/

-- Find the products that fall within the highest 40% of prices
-- In product table
SELECT
	*
FROM
	(SELECT
		Product, 
		ProductID,
		Price,
		CUME_DIST() OVER(ORDER BY Price DESC) percent_dist
	FROM Sales.Products)t
WHERE percent_dist <= 0.4