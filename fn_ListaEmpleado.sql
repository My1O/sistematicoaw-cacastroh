-- 2 - Cree una funci�n de usuario (user function) que muestre un listado de los empleados (HumanResources.Employee) 
-- con las siguientes columnas LoginID, JobTitle, BirthDate, HireDate. 
-- Adem�s, deber� mostrar dos columnas adicionales en las que se muestre un c�lculo de la Edad de la persona basado en BirthDate 
-- y la Antig�edad basado en HireDate.


-- Login ID, JobTitle, BirthDate, HireDate
/*
DECLARE @FNacimientoPersona smallint
SET @FNacimientoPersona = DATEPART(yy,'19930124')
PRINT @EdadPersona
DECLARE @Actual smallint 
SET @Actual = DATEPART(yy, getdate())
PRINT @Actual
DECLARE @EdadActual smallint
SET @EdadActual = @Actual - @FNacimientoPersona
PRINT @EdadActual
*/
CREATE FUNCTION ListaEmpleado 
(	
)
RETURNS TABLE 
AS
RETURN 
(
	-- Filtrado de datos que mostrara la tabla
	SELECT LoginID, JobTitle,BirthDate, HireDate FROM HumanResources.Employee
)
GO

-- SELECT * FROM ListaEmpleado()
