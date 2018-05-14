CREATE TRIGGER [dbo].[tr_turno_for_insert]
ON [dbo].[turno]
AFTER INSERT
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'turno'


INSERT INTO Audit VALUES (@tablename , 'Insert ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;