--- Making sure we are using the right database
USE [70-461]


--- Creating an Employees table
--CREATE TABLE tblEmployees (
--	EmployeeNumber int,
--	EmployeeName int
--)
--GO


--- Creating a variable
DECLARE @age AS int; ---NULL


--- Creating a variable with initial value
DECLARE @myNum AS int = 20;


--- Setting a variable with a value
SET @age = 23.765; --- This is automatically truncated down because @age is an int


--- Checking the results
SELECT @myNum as result, @age as age;