CREATE PROCEDURE dbo.spINSERT_dbo_servicio @id int, @sede_id int, @profesional_id int, @paciente_id int, @turno_id int

AS


SET NOCOUNT ON

INSERT INTO [dbo].[servicio]
         ([id]
           ,[sede_id]
           ,[profesional_id]
           ,[paciente_id],
		   [turno_id])
     VALUES
           (@id,
		   @sede_id,
		   @profesional_id,
		   @paciente_id,
		   @turno_id
		              )
GO
