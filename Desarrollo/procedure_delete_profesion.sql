CREATE PROCEDURE dbo.spDELETE_dbo_profesion @id int
AS


SET NOCOUNT ON

DELETE FROM [dbo].[profesion]
         WHERE
           (id = @id)
GO