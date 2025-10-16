-- Replace string function 
-- Replaces value with new value
-- Need to specify what would be old value
-- If replacement value is not specified then
-- It does nothing and reutrns input as output


--SELECT 
--	'123-456-7890' AS phone, 
--REPLACE('123-456-7890', '-', '/') AS clean_number

SELECT 
	'report.txt' AS old_name,
REPLACE('report.txt', '.txt' , '.csv') AS new_name