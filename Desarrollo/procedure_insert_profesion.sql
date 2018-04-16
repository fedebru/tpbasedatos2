CREATE PROCEDURE dbo.spINSERT_dbo_profesion @id int, @ocupacion varchar(100)

AS


SET NOCOUNT ON

INSERT INTO [dbo].[profesion]
           ([id]
           ,[ocupacion]
           )
     VALUES
           (@id
           ,@ocupacion
           )
GO

