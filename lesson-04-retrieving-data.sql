-- Select Database Context
USE [70-461]

-- Every retrieving query have to have a SELECT
SELECT myNumbers 
FROM [dbo].[tblSecond] -- Brackets are optional unless the field has space or other characters
GO

SELECT * 
FROM tblFirst
GO
