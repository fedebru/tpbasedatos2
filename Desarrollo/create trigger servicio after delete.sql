CREATE TRIGGER [dbo].[tr_servicio_for_delete]
ON [dbo].[servicio]
AFTER DELETE
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'servicio'


INSERT INTO Audit VALUES (@tablename , 'Delete ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

END;