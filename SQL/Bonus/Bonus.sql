USE france
GO

--SELECT DISTINCT count([villes].[ville]) OVER (PARTITION BY [dbo].[departements].[id]) as 'ville_dep',[departements].[nom_dep],
--count([villes].[ville]) OVER (PARTITION BY [dbo].[regions].[id]) as 'Nb ville par rapport région',[regions].[nom_region]
--FROM [dbo].[villes] INNER JOIN [dbo].[departements] 
--ON [villes].[dep] = [departements].[dep]
--INNER JOIN [dbo].[regions]
--ON [dbo].[departements].[region] = [dbo].[regions].[region]
--	GROUP BY [departements].[nom_dep],[regions].[nom_region],[dbo].[regions].[id],[villes].[ville],[dbo].[departements].[id] WITH ROLLUP
--	ORDER BY [regions].[nom_region] ASC
--GO

SELECT [dbo].[regions].[nom_region],[dbo].[departements].[nom_dep],COUNT([dbo].[villes].[ville]) AS 'nb_villes'
FROM [dbo].[regions]
INNER JOIN [dbo].[departements]
ON [dbo].[regions].[region] = [dbo].[departements].[region]
INNER JOIN [dbo].[villes]
ON [dbo].[villes].[dep] = [dbo].[departements].[dep]
GROUP BY [dbo].[regions].[nom_region], [dbo].[departements].[nom_dep] WITH ROLLUP