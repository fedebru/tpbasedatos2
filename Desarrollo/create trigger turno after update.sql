CREATE TRIGGER [dbo].[tr_turno_for_update]
ON [dbo].[turno]
AFTER UPDATE
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'turno'


INSERT INTO Audit VALUES (@tablename , 'Update ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;