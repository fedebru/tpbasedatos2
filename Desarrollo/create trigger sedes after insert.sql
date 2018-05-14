CREATE TRIGGER [dbo].[tr_sedes_for_insert]
ON [dbo].[sedes]
AFTER INSERT
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'sedes'


INSERT INTO Audit VALUES (@tablename , 'Insert ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;