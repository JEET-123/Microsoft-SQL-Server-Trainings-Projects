SELECT * 
FROM Transactions

-- Separate Customer Specific Columns

SELECT [customerid],
       [firstname],
       [surname],
       [shipping_state],
       [loyalty_discount]

INTO TMP
FROM Transactions

SELECT *
FROM TMP
-- 3455 rows but originally 942  rows are there
-- REMOVE DUPLICATES

SELECT DISTINCT *
INTO Customers
FROM TMP
-- 942 rows 

SELECT *
FROM Customers
-- 2NF CONFIRMED

-- Let's Go back to the Trnsactions Table

SELECT *
FROM Transactions 

-- Remove Customer Specific Columns 
-- But leave the customerid Column ( Foreign Key )

ALTER TABLE Transactions
DROP COLUMN firstname,
            surname,
			shipping_state,
			loyalty_discount

SELECT * 
FROM Transactions

-- 2NF CONFIRMED
-- DROP TMP Table

DROP TABLE TMP