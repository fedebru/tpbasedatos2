CREATE TRIGGER [dbo].[tr_sedes_for_update]
ON [dbo].[sedes]
AFTER UPDATE
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'sedes'


INSERT INTO Audit VALUES (@tablename , 'Update ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;