CREATE TRIGGER [dbo].[tr_profesion_for_insert]
ON [dbo].[profesion]
AFTER INSERT
AS
BEGIN
DECLARE @userName NVARCHAR(255) = SYSTEM_USER
DECLARE @tableName NVARCHAR(255) = 'profesion'


INSERT INTO Audit VALUES (@tablename , 'Insert ' + LOWER(@tableName) + 
                         ' was added at ' + CONVERT(NVARCHAR,CURRENT_TIMESTAMP), @userName);

						 END;