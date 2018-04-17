CREATE PROCEDURE dbo.spUPDATE_dbo_profesion @id int, @ocupacion varchar(100)

AS


SET NOCOUNT ON

UPDATE [dbo].[profesion]
     SET
		ocupacion = @ocupacion
						
						WHERE (id = @id
										)
						
GO