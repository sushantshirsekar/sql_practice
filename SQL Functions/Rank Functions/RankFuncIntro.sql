/* 
Rank Functions
Ranks data based on value provided 
Two types of ranking - Integer based and Percentage Based
Order clause is compuslory and one can't use fram clause
Difference between ROW_NUMBER and RANK, ROW_NUMBER doesn't handle ties
Where as RANK() handle ties -> 
which means if we have same value it will assign only one rank
RANK() -> keeps gap in ranking while combining ties
DENSE_RANK() -> same as rank() but it doesn't keep any gap in ranking
**Comparison**
ROW_NUMBER() -> Unique Rank, doesn't handle ties, no gaps in rank
RANK() -> Shared Rank, Handle ties, gaps in rank
DENSE_RANK() -> Shared Rank, handle ties, no gaps in rank
*/

-- Rank the orders based on their sales
-- From highest to lowest

SELECT 
	OrderID, 
	OrderDate,
	Sales,
	ROW_NUMBER() OVER(ORDER BY SALES DESC) sales_row_number,
	RANK() OVER(ORDER BY SALES DESC) sales_rank,
	DENSE_RANK() OVER(ORDER BY SALES DESC) sales_dense_rank
FROM Sales.Orders