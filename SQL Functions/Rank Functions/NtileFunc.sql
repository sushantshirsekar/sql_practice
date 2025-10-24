/*
NTILE() Use-Case
Equalizing Load-> 
When transferring a big table data A to B
In one go it can result in alot of time
And also in error sometimes due to network load
Therefore dividing data into buckets using NTILE()
and then transferring
*/


-- In order to export the data divide orders into two groups

SELECT
NTILE(2) OVER(ORDER BY OrderID) buckets,
*
FROM Sales.Orders