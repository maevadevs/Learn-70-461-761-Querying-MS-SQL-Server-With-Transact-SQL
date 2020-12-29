-- Select Database Context
USE [70-461]

-- Mathematical Functions
-- **********************

DECLARE @myNum AS NUMERIC(7,2) = 3.14 

-- We can do all the basic math with numeric data types
SELECT 
	@myNum AS Original,
	@myNum + 2 AS Addition,
	@myNum - 2 AS Subtraction,
	@myNum * 2 AS Multiplication,
	@myNum / 2 AS Division

-- We can also use power, but we have to user the power() function
SELECT 
	@myNum AS Original,
	POWER(@myNum,2) AS Power

-- Shortcut for power of 2 and square root
-- But POWER() is more flexible
SELECT 
	@myNum AS Original,
	SQUARE(@myNum) AS Square,
	SQRT(@myNum) AS SquareRoot

GO

-- There are 3 ways for rounding numbers
--  FLOOR()
--  CEILING()
--  ROUND()

DECLARE @myVar AS NUMERIC(7,2) = -3.1415

-- FLOOR(): Round down to the nearest integer
-- CEILING(): Round up to the nearest integer
-- ROUND(): Goes up or down to the nearest. Specify the precision to round to
--  We can also round backward with negative number

SELECT 
	@myVar AS Original,
	FLOOR(@myVar) AS Floor,
	CEILING(@myVar) AS Ceiling, 
	ROUND(@myVar, 0) AS Round0, -- Nearest integer
	ROUND(@myVar, 1) AS Round1, -- One decimal place
	ROUND(@myVar, 2) AS Round2,  -- Two decimal places
	ROUND(@myVar, -1) AS RoundMinus1 -- Round backward to the nearest tenth

-- Some constants are also available as a function

SELECT 
	PI() AS pi,
	EXP(1) AS e

-- Other math functions

SELECT
	-456 AS Number,
	ABS(-456) AS AbsoluteValue, -- Get the absolute value of a number
	SIGN(0) AS sign -- Get the sign of a number (Negative, Positive, or 0)

-- We can generate a Pseudo-random number with a seed
SELECT
	RAND(777) AS RandomNumberWihSeed,
	RAND() AS RandomNumberWithoutSeed