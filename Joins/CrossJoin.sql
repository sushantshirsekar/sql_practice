/* 
-> CROSS JOIN 
Combine every Row from Left with Every Row from Right
Customers - 5 rows and Orders - 4 rows = 5 * 4 = 20
*/

SELECT 
	* 
FROM customers 
CROSS JOIN orders