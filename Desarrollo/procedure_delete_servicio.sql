CREATE PROCEDURE dbo.spDELETE_dbo_servicio @id int
AS


SET NOCOUNT ON

DELETE FROM [dbo].[servicio]
         WHERE
           (id = @id)
GO