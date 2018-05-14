CREATE TRIGGER [dbo].[tr_profesion_for_delete]
ON [dbo].[profesion]
AFTER DELETE
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'profesion'


INSERT INTO Audit VALUES (@tablename , 'Delete ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

END;