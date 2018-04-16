CREATE PROCEDURE dbo.spINSERT_dbo_profesional @id int, @nombre varchar(100), @matricula varchar(100), @profesion_id int

AS


SET NOCOUNT ON

INSERT INTO [dbo].[profesional]
         ([id]
           ,[nombre]
           ,[matricula]
           ,[profesion_id])
     VALUES
           (@id,
		   @nombre,
		   @matricula,
		   @profesion_id
		              )
GO


