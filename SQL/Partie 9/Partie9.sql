USE [france]
GO
--SELECT * 
--	FROM [dbo].[regions]
--GO
--SELECT [nom_dep]
--	FROM [dbo].[departements]
--	ORDER BY [nom_dep] ASC
--GO
--SELECT [ville]
--	FROM [dbo].[villes]
--	WHERE [dep] = '60'
--	ORDER BY [cp] ASC
--GO
--SELECT TOP 3 [ville]
--	FROM [dbo].[villes]
--	WHERE [cp] = '60400'
--	ORDER BY [ville] ASC
--GO
--SELECT [ville]
--	FROM [dbo].[villes]
--	WHERE [ville] LIKE '%saint%'
--GO
--SELECT count([villes].[ville]) as 'Nombre de ville',[departements].[nom_dep]
--	FROM [dbo].[villes] INNER JOIN [dbo].[departements] 
--	ON [villes].[dep] = [departements].[dep]
--	GROUP BY [departements].[nom_dep]
--GO
--SELECT count([villes].[ville]) as 'Nombre de ville',[departements].[nom_dep]
--	FROM [dbo].[villes] INNER JOIN [dbo].[departements] 
--	ON [villes].[dep] = [departements].[dep]
--	GROUP BY [departements].[nom_dep]
--GO
--SELECT [ville]
--	FROM [dbo].[villes] INNER JOIN [dbo].[regions]
--	ON [dbo].[villes].[region] = [dbo].[regions].[region]
--		WHERE [dbo].[regions].[nom_region] = 'Picardie'
--GO
--SELECT count([villes].[ville]) as 'Nombre de ville',[departements].[nom_dep],[regions].[nom_region]
--	FROM [dbo].[villes] 
--	INNER JOIN [dbo].[departements] 
--	ON [villes].[dep] = [departements].[dep]
--	INNER JOIN [dbo].[regions] 
--	ON [dbo].[villes].[region] = [dbo].[regions].[region]
--	GROUP BY [departements].[nom_dep],[regions].[nom_region]
--GO

SELECT  [dbo].[departements].[nom_dep], COUNT([dbo].[villes].ville) AS [Nombre de villes]
FROM  [dbo].[departements]
INNER JOIN [dbo].[villes]
ON [dbo].[departements].[dep] = [dbo].[villes].[dep]
GROUP BY [dbo].[departements].[nom_dep]
UNION 
SELECT [dbo].[regions].[nom_region], COUNT([dbo].[villes].ville) AS [Nombre de villes]
FROM  [dbo].[regions]
INNER JOIN [dbo].[villes]
ON [dbo].[regions].[region] = [dbo].[villes].[region]
GROUP BY [dbo].[regions].[nom_region]