-- Task
-- Check whether the table orders contain
-- duplicate or not

SELECT 
	*
FROM (
SELECT 
	OrderID, 
	-- If value > 1 then it contains duplicates
	COUNT(*) OVER(PARTITION BY OrderID) check_primary_key
FROM Sales.OrdersArchive)t
WHERE check_primary_key > 1