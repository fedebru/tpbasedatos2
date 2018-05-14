CREATE TRIGGER [dbo].[tr_profesional_for_insert]
ON [dbo].[profesional]
AFTER INSERT
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'profesional'


INSERT INTO Audit VALUES (@tablename , 'Insert ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;