-- Transitive Dependencied need to be separated into their own table

SELECT [item],
       [description],
       [retail_price]

INTO TMP
FROM Transactions
-- (3455 row(s) affected)

SELECT * 
FROM TMP

-- To make the new table 1NF - Remove Duplicates

SELECT DISTINCT *
INTO Items
FROM TMP
-- (126 row(s) affected)

-- CHECK
SELECT *
FROM Items

-- 3NF CONFIRMED

-- Now remove the extracted rows from the Transaction Table
-- But keep the Foreign Key "ITEM"

ALTER TABLE Transactions
DROP COLUMN [description],
            [retail_price]

SELECT * 
FROM Transactions

-- 3NF CONFIRMED

DROP TABLE TMP