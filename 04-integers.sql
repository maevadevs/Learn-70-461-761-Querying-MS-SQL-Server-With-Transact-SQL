USE [70-461]

-- INTEGERS
--  - int		(8 Bytes, Signed)
--  - bigint	(4 Bytes, Signed)
--  - smallint	(2 Bytes, Signed)
--  - tinyint	(1 Bytes, Unsigned)

DECLARE @age tinyint = 32;
SELECT @age AS age;

-- If we go beyond the limits, we get an error
--SET @age = -1;
GO