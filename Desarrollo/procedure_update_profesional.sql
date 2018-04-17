CREATE PROCEDURE dbo.spUPDATE_dbo_profesional @id int, @nombre varchar(100), @matricula varchar(100), @profesion_id int

AS


SET NOCOUNT ON

UPDATE [dbo].[profesional]
   SET
			[nombre] = @nombre,
			[matricula] = @matricula,
           [profesion_id] = @profesion_id
	   WHERE id=@id;
						
GO