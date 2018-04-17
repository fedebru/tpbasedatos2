CREATE PROCEDURE dbo.spDELETE_dbo_paciente @id int
AS


SET NOCOUNT ON

DELETE FROM [dbo].[paciente]
         WHERE
           (id = @id)
GO