CREATE PROCEDURE dbo.spUPDATE_dbo_paciente @id int, @nombre varchar(100), @obra_social bit

AS


SET NOCOUNT ON

UPDATE [dbo].[paciente]
   SET [nombre] = @nombre,
	   [obra_social] = @obra_social
	   WHERE id=@id;
						
GO