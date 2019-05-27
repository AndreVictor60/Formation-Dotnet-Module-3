USE [webDevelopment]
GO

--SELECT [id]
--      ,[language]
--      ,[version]
--  FROM [dbo].[languages]
--GO

--DELETE FROM [dbo].[languages]
--      WHERE [language] = 'HTML'
--GO

--SELECT [id]
--      ,[language]
--      ,[version]
--  FROM [dbo].[languages]
--GO

--UPDATE [dbo].[frameworks]
--   SET [framework] = 'Symfony2'
-- WHERE [framework] = 'Symfony'
--GO

--SELECT *
--	FROM [dbo].[frameworks]
--GO

UPDATE [dbo].[languages]
   SET [version] = 'version 5.1'
	WHERE [language] = 'JavaScript' AND [version] = 'version 5'
GO

SELECT *
	FROM [dbo].[languages]
GO



