USE [70-461];

/* Basic Table Operations using TSQL
 * *********************************
 * - CREATE
 * - INSERT
 * - SELECT
 * - DELETE
 * - TRUNCATE
 * - DROP
 * - ALTER
 * - ALTER COLUMN
 */


/* Creating a table 
 * ****************
 */

--CREATE TABLE tblSecond (
--	myNumber int --- [Column] [type]
--);
--GO


/* To Refresh IntelliSense: Edit > IntelliSense > Refresh Local Cache */


/* Inserting Data 
 * **************
 */

--INSERT INTO tblSecond
--VALUES (234);
--GO

--INSERT INTO [dbo].[tblSecond]
--VALUES (678), 
--(987), 
--(145), 
--(946);
--GO


/* Retrieving Data 
 * ***************
 */

--SELECT myNumber 
--FROM [dbo].[tblSecond]; --- Brackets are optional unless the field has space or other characters
--GO

--SELECT * 
--FROM dbo.tblSecond; --- Brackets are optional unless the field has space or other characters
--GO


/* Deleting Data: DELETE
 * *********************
 * This just deletes the contents of the table, not the table itself
 */

--SELECT * FROM tblSecond;

--DELETE 
--FROM tblSecond;

--SELECT * FROM tblSecond;
--GO

/* Another way is to use TRUNCATE TABLE
 * Similar to DELETE, it does not delete the table but just the rows
 */

--SELECT * FROM tblSecond;

--TRUNCATE TABLE tblSecond;

--SELECT * FROM tblSecond;
--GO


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


/* Dropping a table
 * ****************
 * This method actually completely remove the table from existence
 */

--DROP TABLE tblFirst;
--DROP TABLE tblSecond;


/* Practices
 * *********
 */

--CREATE TABLE [tblPrimeNumbers] (
--	intField int
--);
--GO

--INSERT INTO [dbo].[tblPrimeNumbers]
--VALUES (2), (3), (5), (7), (11);
--GO

--SELECT * FROM tblPrimeNumbers;
--DELETE FROM tblPrimeNumbers;
--SELECT * FROM tblPrimeNumbers;
--GO

--INSERT INTO [dbo].[tblPrimeNumbers]
--VALUES (2), (3), (5), (7), (11);
--GO

--SELECT * FROM tblPrimeNumbers;
--TRUNCATE TABLE tblPrimeNumbers;
--SELECT * FROM tblPrimeNumbers;
--GO

--DROP TABLE tblPrimeNumbers;