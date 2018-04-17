CREATE PROCEDURE dbo.spDELETE_dbo_sedes @id int
AS


SET NOCOUNT ON

DELETE FROM [dbo].[sedes]
         WHERE
           (id = @id)
GO