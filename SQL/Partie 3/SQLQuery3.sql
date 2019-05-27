-- Exercice 1
-- ALTER TABLE [dbo].[languages] ADD [versions] nvarchar(50)

-- Exercice 3

--USE [webDevelopment]
--GO  
--EXEC sp_rename 'languages.versions', 'version', 'COLUMN';  

-- Exercice 5

--ALTER TABLE [dbo].[frameworks]
--ALTER COLUMN [version] NVARCHAR(10);

-- TP TP TP 

use [codex]
GO
ALTER TABLE [dbo].[clients]
DROP COLUMN [secondPhoneNumber]
GO
EXEC sp_rename 'clients.firstPhoneNumber', 'phoneNumber', 'COLUMN'
GO
ALTER TABLE [dbo].[clients]
ALTER COLUMN [phoneNumber] NVARCHAR(10);
GO
ALTER TABLE [dbo].[clients]
ADD [zipCode] nvarchar(50), [city] nvarchar(50);