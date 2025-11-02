-- =========================================
-- Tip 21 : Best Practices -> Creating Table
-- =========================================

-- Bad Practice 
-- Avoid Text on any cost use VARCHAR in place
-- In places if able to avoid VARCHAR avoid it too
-- If someone organize data using VARHCARS like FirstName, LastName
-- Avoid (MAX) and unnecessarily large lenghts in data types
-- Use NOT NULL constraint where applicable
-- Ensure all your tables have a Clustered Primary Key
-- Create a non-clustered index for foreign keys that are used frequently

CREATE TABLE CustomerInfo (
	CustomerID INT, 
	FirstName VARCHAR(50),
	LastName TEXT,
	Country VARCHAR(255), 
	TotalPurchases FLOAT,
	Score VARCHAR(255),
	BirthDate VARCHAR(255),
	EmployeeID INT, 
	CONSTRAINT FK_CustomersInfo_EmployeeID FOREIGN KEY (EmployeeID)
		REFERENCES Sales.Employees(EmployeeID)
)

-- Good Practice 

CREATE TABLE CustomerInfoGood (
	CustomerID INT PRIMARY KEY CLUSTERED,  
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	Country VARCHAR(50) NOT NULL, 
	TotalPurchases FLOAT,
	Score INT,
	BirthDate DATE,
	EmployeeID INT, 
	CONSTRAINT FK_CustomersInfo_EmployeeID FOREIGN KEY (EmployeeID)
		REFERENCES Sales.Employees(EmployeeID)
)

CREATE NONCLUSTERED INDEX Idx_Good_Customers_EmployeeID
ON CustomerInfoGood(EmployeeID)