USE [development]
GO

--SELECT [frameworks].[name],[languages].[name]
--  FROM [dbo].[languages]  LEFT JOIN [dbo].[frameworks]
--  ON [frameworks].[languagesId] = [languages].[id]
--GO

--SELECT [frameworks].[name],[languages].[name]
--  FROM [dbo].[languages]  INNER JOIN [dbo].[frameworks]
--  ON [frameworks].[languagesId] = [languages].[id]
--GO

--SELECT count([frameworks].[name]) as 'Nombre de framework',[languages].[name]
--  FROM [dbo].[languages]  INNER JOIN [dbo].[frameworks]
--  ON [frameworks].[languagesId] = [languages].[id]
--  GROUP BY [languages].[name]
--GO

--SELECT count([frameworks].[name]) as 'Nombre de framework',[languages].[name]
--  FROM [dbo].[languages]  INNER JOIN [dbo].[frameworks]
--  ON [frameworks].[languagesId] = [languages].[id]
--  GROUP BY [languages].[name]
--  HAVING count([frameworks].[name]) > 3
--GO