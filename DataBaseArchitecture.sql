/* 
Data-Base Architecture
1] Data-Base engine used to execute query
2] Data-Base has 2 types of memory -> Cache and Disk Memory
	i] Disk Memory -> Used for long term memory, 
	large amount of data, slow to read and write
	Three types of storage area-> 
		a. UserData Storage -> Stores all the data related to User (Imp Data)
		b. System Catalog -> Meta data (data about data) of the DataBase 
		c. Temporary storage -> Used to store temporary data used for short-term
		tasks like processing queries or sorting data. Once the data's use is 
		fullfilled it clears the data
	ii] Cache Memory -> Used for short term memory, 
	small amount data, fast to read and write data
Query Execution Flow, 
Query is sent to DataBase Engine and then to Cache, 
if cache has the table then it is written or the query goes to
Disk memory and from thier table is returned
*/

SELECT
	DISTINCT TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS