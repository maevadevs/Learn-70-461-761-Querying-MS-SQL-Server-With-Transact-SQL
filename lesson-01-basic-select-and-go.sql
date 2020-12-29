-- Every query is run in a context of a database
-- This can be done explicitly by using the keyword USE
USE [70-461]

-- SELECT is the equivalent of PRINT in other languages
-- SELECT is used for 90% of everything
-- AS is optional but preferrable
-- Semi-colons are also optional
SELECT 1 + 1 AS Result
GO

-- Multiple SQL statements will generate multiple outputs
-- Successive statements are grouped together in a batch
-- Batches are to be executed all at once
-- To group SQL statements into a batch, we can use GO
--   GO allows to end a batch
--   GO does not need to have semi-colons
SELECT 2 + 2 AS Result
GO

-- Arithmetics works as expected
-- By using batches, the previous batches still executes even though the next line has an error
-- Even if there are errors, all the codes still execute everything
SELECT 1/0 AS Result -- Division by zero error: All the codes still execute
GO

-- The error does not prevent other batches from still executing
-- This line still executes
SELECT 2 - 1 AS Result
GO

-- Even if they are within the same batch, all queries still executes
SELECT 2 / 0 AS Result -- Division by zero error
SELECT 2 * 5 AS Result -- Still executes
GO

-- PRACTICE ACTIVITY
-- *****************

-- 1. What is 4 plus 9? Please call the column MyAnswer.
SELECT 4 + 9 AS MyAnswer
GO

-- 2. What is 15 minus 26? Please call the column Balance.
SELECT 15 - 26 AS Balance
GO

-- 3. What is 24 times 4 plus 3? Please call the column MyResponse.
SELECT 24 * 4 + 3 AS MyResponse
GO

-- 4. What is 48 divided by 4? Please call the column Result.
SELECT 48 / 4 AS Result
GO
