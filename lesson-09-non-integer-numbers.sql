-- Every query is run in a context of a database
-- This can be done explicitly by using the keyword USE
USE [70-461]

-- There are 4 different types of numbers
-- - Decimal and Numeric
-- - Float and Real
-- - Int, BigInt, SmallInt, TinyInt
-- - Money and SmallMoney

-- Numeric and Decimal are functionally equivalent
-- Floating-point numbers need precisions: decimal(totalDigitsPrecision, decimalPointsScale)
-- If we do not follow the format, we get an arithmetic overflow error
--   The precision (totalDigitsPrecision) defaults to 18 for historic reasons
--   The scale (decimalPointsScale) is optional and default to 0 with rounding
-- Default: numeric(18, 0) or decimal(18, 0)

DECLARE @myFloat AS DECIMAL(7,2) -- 7 total digits with 2 decimal points: 12345.67
DECLARE @myFloat2 AS NUMERIC(7,2) -- Does the same thing. These are alias.
SET @myFloat = 12345.67
SELECT @myFloat as myFloat
-- This would get an error because the format does not match the declared
--SET @myFloat = 123456.7 -- Arithmetic overflow error
GO

-- How many bytes does it store? It depends on the precision
--   Precision: 1-9      5 Bytes
--   Precision: 10-19    9 Bytes (+4)
--   Precision: 20-28   13 Bytes (+4)
--   Precision: 29-38   17 Bytes (+4)

-- MONEY and SMALLMONEY
--   Fixed to 4 decimal places
--   smallmoney: 4 Bytes
--   Money:      8 Bytes
-- SMALLMONEY: Up to +/-214,748.364 or so
-- If beyond, would be rounded to the nearest 4 decimal places

DECLARE @mySmallMoney AS SMALLMONEY = 123456.7891
SELECT @mySmallMoney as mySmallMoney
GO

-- FLOAT and REAL
-- Advised to NOT USING THEM because they are approximate data types
-- Not all values can be represented exactly
-- There are 2 FLOAT types:
-- - FLOAT 1-24  -- 7-digits precision  -- 4 Bytes
-- - FLOAT 25-53 -- 15-digits precision -- 8 Bytes
-- It is better to just choose FLOAT(24) or FLOAT(53)
-- REAL is the same thing as FLOAT(24)

DECLARE @myVar AS float(24) = 123456.7891; -- Float-24 is only up to 7-digits precision though
DECLARE @myVar2 AS float(53) = 123456.78912345678912; -- Float-53 is up to 15-digits precision though
SELECT @myVar as myVar;
SELECT @myVar2 as myVar2;
GO

DECLARE @myVar AS money = 1000000;
SELECT @myVar as myVar;
