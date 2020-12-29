-- Select Database Context
USE [70-461]

-- Declaring a variable
DECLARE @myVar AS int -- NULL by default

-- Setting a variable
SET @myVar = 500

-- Declaring and Setting at the same time
DECLARE @age AS int = 56.756 -- This is automatically truncated down because @age is an int

-- We can use variables with SELECT
SELECT @age AS Age

-- We can manipulate a variable as in any other programming language
SET @age = @age + 10
SELECT @age AS Age

-- Number types are dynamic: If INT and given FLOAT, it will truncate
-- It will always go down to the nearest integer toward 0
SET @myVar = 3.99
SELECT @myVar AS MyVar

-- For negative numbers, it will round down toward 0
SET @myVar = -2.99
SELECT @myVar AS MyVar
