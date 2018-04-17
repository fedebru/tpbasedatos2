CREATE PROCEDURE dbo.spUPDATE_dbo_servcio @id int, @sede_id int, @profesional_id int, @paciente_id int, @turno_id int

AS

SET NOCOUNT ON

UPDATE [dbo].[servcio]
   SET     [sede_id] = @sede_id,
           [profesional_id] = @profesional_id,
           [paciente_id] = @paciente_id,
           [turno_id] = @turno_id
	   WHERE id = @id;
GO