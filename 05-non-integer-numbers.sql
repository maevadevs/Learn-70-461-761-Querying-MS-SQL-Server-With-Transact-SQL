USE [70-461];


-- NON-INTEGERS
-- There are 4 different types of numbers
-- - Decimal and Numeric
-- - Float and Real
-- - Int, BigInt, SmallInt, TinyInt
-- - Money and SmallMoney


-- Decimal and Numeric
-- These are exactly the same thing
-- Functionally equivalent
-- For decimal numbers, we need to tell how precise we want it to be
-- - How many digits in total (Precision) -- Default: 18
-- - How many of those digits are after the decimal point (Scale, Optional)
--   - If it is not specified, it will round up or down to the closest int (Default to 0)

DECLARE @myDecimal AS numeric(7,2) -- 7 digits, 2 of which are after the decimal point
-- DECLARE @myDecimal AS decimal(7,2) -- Does the same thing. These are alias.

-- 12345.67 would be valid
-- 123456.7 would be invalid

SET @myDecimal = 12345.67
SELECT @myDecimal AS myDecimal;

-- This would get an error because the format does not match the declared
--SET @myDecimal = 123456.7 -- Arithmetic overflow error
GO


-- Decimal Precision and Bytes
-- - Precision 1 to 9	--> 5 Bytes
-- - Precision 10 to 19	--> 9 Bytes (+4)
-- - Precision 20 to 28	--> 13 Bytes (+4)
-- - Precision 29 to 38	--> 17 Bytes (+4)


-- MONEY and SMALLMONEY
-- Fixed to 4 decimal places
-- 8 Bytes vs 4 Bytes
-- SMALLMONEY: Up to +/-214,748.364 or so

DECLARE @myVar as SMALLMONEY = 123456.78917;
SELECT @myVar AS myVar;
GO


-- FLOAT and REAL
-- Advised to NOT USING THEM because they are approximate data types
-- Not all values can be represented exactly
-- There are 2 float types:
-- - Float 1-24  -- 7-digits precision  -- 4 Bytes
-- - Float 25-53 -- 15-digits precision -- 8 Bytes
-- It is better to just choose FLOAT(24) or FLOAT(53)
-- REAL is the same thing as FLOAT(24)

DECLARE @myVar AS float(24) = 123456.7891; -- Float-24 is only up to 7-digits precision though
DECLARE @myVar2 AS float(53) = 123456.78912345678912; -- Float-53 is up to 15-digits precision though
SELECT @myVar as myVar;
SELECT @myVar2 as myVar2;
GO

DECLARE @myVar AS money = 1000000;
SELECT @myVar as myVar;