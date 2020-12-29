-- Select Database Context
USE [70-461]

-- Checking before deleting
SELECT * 
FROM tblFirst

-- Deleting everything from the table using DELETE
-- Only delete each data point contents, not the table
DELETE FROM tblFirst

-- Checking after deleting
SELECT *
FROM tblFirst
GO

-- We can also delete everything from the table using TRUNCATE TABLE
-- Only delete each data point contents, not the table
-- Checking before deleting
SELECT * 
FROM tblSecond

-- Deleting everything from the table using DELETE
-- Only delete each data point contents, not the table
TRUNCATE TABLE tblSecond

-- Checking after deleting
SELECT *
FROM tblSecond
GO

/* What is the difference between DELETE and TRUNCATE?
 * ***************************************************
 */

/* DELETE is DML command and TRUNCATE is DDL command
 * DELETE deletes records one by one and makes an entry for each and every deletion in the transaction log
 * TRUNCATE de-allocates pages and makes one entry for de-allocation of pages in the transaction log
 * 
 * We can rollback DELETE as well as TRUNCATE if the commands are started inside a transaction
 * There is no difference between DELETE and TRUNCATE if we are talking about rollback
 * 
 * TRUNCATE reseeds identity values, whereas DELETE doesn't
 * TRUNCATE removes all records and doesn't fire triggers
 * TRUNCATE is faster compared to DELETE as it makes less use of the transaction log
 * TRUNCATE is not possible when a table is referenced by a Foreign Key or tables are used in replication or with indexed views
 */

-- To completely delete the whole table, use DROP TABLE
DROP TABLE tblFirst
DROP TABLE tblSecond
GO

-- PRACTICE ACTIVITY
-- *****************

-- Create a table
CREATE TABLE [tblPrimeNumbers] (
	intField int
)
GO

-- Insert value into table
INSERT INTO [dbo].[tblPrimeNumbers]
VALUES (2), (3), (5), (7), (11)
GO

-- Delete data from the table using DELETE
SELECT * FROM tblPrimeNumbers
DELETE FROM tblPrimeNumbers
SELECT * FROM tblPrimeNumbers
GO

-- Insert values into table
INSERT INTO [dbo].[tblPrimeNumbers]
VALUES (2), (3), (5), (7), (11)
GO

-- Delete data from table using TRUNCATE TABLE
SELECT * FROM tblPrimeNumbers
TRUNCATE TABLE tblPrimeNumbers
SELECT * FROM tblPrimeNumbers
GO

-- Completely drop the table
DROP TABLE tblPrimeNumbers
