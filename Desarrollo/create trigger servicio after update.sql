CREATE TRIGGER [dbo].[tr_servicio_for_update]
ON [dbo].[servicio]
AFTER UPDATE
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'servicio'


INSERT INTO Audit VALUES (@tablename , 'Update ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;