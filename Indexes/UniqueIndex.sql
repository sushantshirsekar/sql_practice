-- =============
-- Unique Index
-- =============

-- Ensures no duplicate values exist in specific column
-- Syntax -> 
-- CREATE [UNIQUE] [CLUSTERED | NONCLUSTERED] [COLUMNSTORE] INDEX index_name
-- ON table_name(column1, column2,.....)

-- Creating Unique Product Index

SELECT * FROM Sales.Products

CREATE UNIQUE NONCLUSTERED INDEX idx_Products_Product
ON Sales.Products (Product)

INSERT INTO Sales.Products (ProductID, Product) VALUES( 106, 'Caps')