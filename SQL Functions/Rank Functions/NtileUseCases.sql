/* 
NTILE() -> Rank Function
Divides the rows into specified number of 
approximately equal groups (Buckets)
If odd number of rows then largers groups are first
and then smaller groups
11 in two buckets -> first 6 buckets then 5 buckets
*/

SELECT
	OrderID, 
	Sales, 
	NTILE(1) OVER(ORDER BY Sales DESC) one_bucket,
	NTILE(2) OVER(ORDER BY Sales DESC) two_bucket,
	NTILE(3) OVER(ORDER BY Sales DESC) three_bucket,
	NTILE(4) OVER(ORDER BY Sales DESC) four_bucket
FROM Sales.Orders