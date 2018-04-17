CREATE PROCEDURE dbo.spUPDATE_dbo_sedes @id int, @descripcion varchar(100)

AS

SET NOCOUNT ON

UPDATE [dbo].[sedes]
   SET [descripcion] = @descripcion
	   WHERE id = @id;
GO