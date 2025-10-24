/* 
Identify Duplicates in the table 'OrdersArchive'
and return a clean no duplicate data
*/

SELECT
	*
FROM
	(SELECT
		ROW_NUMBER() OVER(PARTITION BY OrderID ORDER BY CreationTime DESC) rd,
		*
	FROM Sales.OrdersArchive)t
WHERE rd = 1