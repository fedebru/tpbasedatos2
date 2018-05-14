CREATE TRIGGER [dbo].[tr_profesional_for_update]
ON [dbo].[profesional]
AFTER UPDATE
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'profesional'


INSERT INTO Audit VALUES (@tablename , 'Update ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;