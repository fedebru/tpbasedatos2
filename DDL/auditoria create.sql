CREATE TABLE [dbo].[Audit](
[id] [int] IDENTITY(1,1) NOT NULL,
[tableName] [nvarchar](255) NOT NULL,
[auditData] [nvarchar](max) NULL,
[userName] [nvarchar](255) NOT NULL,

PRIMARY KEY (id)) 

