-- SELECT is like print()
-- Successive statements are grouped together in a batch
-- Batches are to be executed all at once
--   GO allows to end a batch
--   GO does not need to have semi-colons
-- Even if there are errors, all the codes still execute everything

SELECT 1 + 1 AS result; --- Semicolons are optional
GO

SELECT 2 * 2 AS result;
GO

SELECT 1 / 0 AS result; /* Even if there are errors, all the codes still execute everything */
SELECT 2 / 1 AS result;
GO

/* Quick Exercises */

SELECT 4 + 9 AS MyAnswer;
SELECT 15 - 26 AS Balance;
SELECT 24 * 4 + 3 AS MyResponse;
SELECT 48 / 4 AS Result;
GO
