-- Add a new column named email to the created table

ALTER TABLE persons 
	ADD email VARCHAR(50) NOT NULL

/* You can't add in between the column for that
you need to drop whole table and create new one with column adjustments */
