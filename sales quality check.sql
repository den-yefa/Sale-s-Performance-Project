-- Data Quality check  

SELECT COLUMN_NAME,
        DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sale_data' 
AND TABLE_SCHEMA= 'dbo';

-- Row count check 
SELECT COUNT(*) AS no_of_rows
FROM Sale_data;

---- Column count check 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sale_data';

-- Product name table

SELECT COLUMN_NAME,
        DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'product_name' 
AND TABLE_SCHEMA= 'dbo';

-- Row count check 
SELECT COUNT(*) AS no_of_rows
FROM product_name

---- Column count check 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Product_name'

-- Sales_Category table

SELECT COLUMN_NAME,
        DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_Category' 
AND TABLE_SCHEMA= 'dbo';

-- Row count check 
SELECT COUNT(*) AS no_of_rows
FROM Sales_Category

---- Column count check 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_Category'


-- Sales_channel table
SELECT COLUMN_NAME,
        DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_channel' 
AND TABLE_SCHEMA= 'dbo';

-- Row count check 
SELECT COUNT(*) AS no_of_rows
FROM Sales_channel

---- Column count check 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_channel'

--Sales_Promotion table 

SELECT COLUMN_NAME,
DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_Promotion' 
AND TABLE_SCHEMA= 'dbo';

-- Row count check 
SELECT COUNT(*) AS no_of_rows
FROM Sales_Promotion

---- Column count check 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_Promotion'

--Sales_State table 
SELECT COLUMN_NAME,
DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_State' 
AND TABLE_SCHEMA= 'dbo';

-- Row count check 
SELECT COUNT(*) AS no_of_rows
FROM Sales_State

---- Column count check 
SELECT COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME= 'Sales_State'

