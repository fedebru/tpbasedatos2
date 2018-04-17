CREATE PROCEDURE dbo.spDELETE_dbo_profesional @id int
AS


SET NOCOUNT ON

DELETE FROM [dbo].[profesional]
         WHERE
           (id = @id)
GO