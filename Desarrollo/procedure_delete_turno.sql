CREATE PROCEDURE dbo.spDELETE_dbo_turno @id int
AS


SET NOCOUNT ON

DELETE FROM [dbo].[turno]
         WHERE
           (id =@id)
GO

/*
EXECUTE [dbo].[dbo.spDELETE_dbo_turno] 
   @id =1
GO
*/