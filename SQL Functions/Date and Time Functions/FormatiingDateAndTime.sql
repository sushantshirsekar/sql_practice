-- Formatting Date and Time
-- Changes date fomrat according to different countries
-- ddd -> name of day in short
-- dddd -> complete name of day


USE SalesDB
SELECT 
	OrderID,
	CreationTime,
	FORMAT(CreationTime, 'MM-dd-yyyy') USA_Format,
	FORMAT(CreationTime, 'dd-MM-yyyy') UK_Format,
	FORMAT(CreationTime, 'dd') dd,
	FORMAT(CreationTime, 'ddd')ddd,
	FORMAT(CreationTime, 'dddd')dddd,
	FORMAT(CreationTime, 'MM') MM,
	FORMAT(CreationTime, 'MMM')MMM,
	FORMAT(CreationTime, 'MMMM')MMMM
FROM Sales.Orders