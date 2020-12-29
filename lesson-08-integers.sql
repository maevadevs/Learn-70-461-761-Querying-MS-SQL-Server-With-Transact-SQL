-- Select Database Context
USE [70-461]

-- There are 4 different types of integers: BIST
--   1. bigint:   8 Bytes - 64 bit		signed
--   2. int:      4 Bytes - 32 bit		signed
--   3. smallint: 2 Bytes - 16 bit		signed
--   4. tinyint:  1 Byte  -  8 bit		unsigned

DECLARE @myVar AS TINYINT = 2

-- If we go beyond the limit of each, we get an arithmetic overflow error
--SET @myVar = @myVar - 3 --> This throws an error

-- If we try to subtract float number, the result is rounded up to the next integer
SET @myVar = @myVar - 0.5
SELECT @myVar AS myVar --> Result to 1
GO

-- PRACTICE ACTIVITY
-- *****************

-- Create a variable of the data type that allows values up to 32,767, but no further
DECLARE @thisVar AS SMALLINT

-- Assign the variable the value of 20,000
SET @thisVar = 20000

-- Print out the contents of that variable
SELECT @thisVar as thisVar

-- Change your code so that it tries to assign the value of 200,000
--SET @thisVar = 200000 -- This throws and error
GO

-- Correct the problem by changing your variable to a data type that allows the value of 200,000, 
-- and see if the code now works
DECLARE @thisVar2 AS INT
SET @thisVar2 = 200000
SELECT @thisVar2 as thisVar2