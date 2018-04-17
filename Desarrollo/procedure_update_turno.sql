CREATE PROCEDURE dbo.spUPDATE_dbo_turno @id int, @hora_inicio datetime, @hora_fin datetime, @dia datetime

AS

SET NOCOUNT ON

UPDATE [dbo].[turno]
   SET     [hora_inicio] = @hora_inicio,
           [hora_fin] = @hora_fin,
           [dia] = @dia
	   WHERE id = @id;
GO