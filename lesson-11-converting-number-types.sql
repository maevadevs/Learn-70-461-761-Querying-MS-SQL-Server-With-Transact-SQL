-- Select Database Context
USE [70-461]

-- Number Conversions
-- ******************

-- Division between integers will end up to be an integer as well (Floor Division)
SELECT 3/2 AS Result --> 1

-- If we want true division, we could make one of the numbers into a float
SELECT 
	3.0/2 AS Result1,
	3/2.0 AS Result2

-- We could have implicit data type conversion
-- E.g. Integer --> Decimal
DECLARE @myVar AS DECIMAL(5,2) = 3 -- An integer assigned to a decimal
SELECT @myVar AS myVar

-- We could also explicitly make conversions
-- Using the CONVERT() function or CAST() function
-- If the value does not fit the cast type, there will be an overflow error
DECLARE @myInt AS SMALLINT = 256
SELECT 
	CONVERT(DECIMAL(5,2), @myInt) / 3 AS ConvertedNum, -- An integer explicitly converted to decimal for division
	CAST(@myInt AS DECIMAL(5,2)) / 3 AS CastedNum

-- Arithemtic operations works on the basis of the converted number
-- Convert first before adding (Same thing for cast)
SELECT 
	CONVERT(INT, 123.456) + CONVERT(INT, 789.92) AS AdditionResultConvert,
	CAST(123.456 AS INT) + CAST(789.92 AS INT) AS AdditionaResultCast

-- If the value does not fit the cast type, there will be an overflow error
-- In order to avoid those errors, we can use TRY_CAST or TRY_CONVERT
-- These give a NULL if the conversion doesn't work properly

GO

-- Practice Activity
-- *****************

-- Have a look at the Calculation column. What is wrong with it? Please correct it.
-- Please round the fractions in the Calculation column down to the next whole number (so 4.153 would round down to 4).
-- Please round the fractions up (so 4.153 would round up to 5).
-- Please round the fractions to the nearest one decimal place (so 4.153 would round up to 4.2).
-- Multiply the first field, system_type_id, by 2, and then convert it to a tiniyint. 
-- If it doesn't work, instead of converting it using CONVERT or CAST, use the functions TRY_CONVERT or TRY_CAST instead - 
-- these give a NULL if the conversion doesn't work properly.

SELECT 
	system_type_id, 
	column_id, 
	ROUND(CAST(system_type_id AS DECIMAL(5,2)) / CAST(column_id AS DECIMAL(5,2)), 1) AS Calculation,
	TRY_CAST((system_type_id * 2) AS TINYINT) AS Calc2
FROM sys.all_columns