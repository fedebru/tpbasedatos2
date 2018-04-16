CREATE PROCEDURE dbo.spINSERT_dbo_turno @id int, @hora_inicio datetime, @hora_fin datetime, @dia datetime
AS


SET NOCOUNT ON

INSERT INTO [dbo].[turno]
         ([id]
           ,[hora_inicio]
           ,[hora_fin]
           ,[dia])
     VALUES
           (@id,
		   @hora_inicio,
		   @hora_fin,
		   @dia
		              )
GO

