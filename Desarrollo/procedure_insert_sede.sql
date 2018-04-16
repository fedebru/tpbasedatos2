
CREATE PROCEDURE dbo.spINSERT_dbo_sedes @id int, @descripcion varchar(100)

AS


SET NOCOUNT ON

INSERT INTO [dbo].[sedes]
           ([id]
           ,[descripcion]
           )
     VALUES
           (@id
           ,@descripcion
           )
GO
