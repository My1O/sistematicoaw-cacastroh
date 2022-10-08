-- 2 - Cree una función de usuario (user function) que muestre un listado de los empleados (HumanResources.Employee) 
-- con las siguientes columnas LoginID, JobTitle, BirthDate, HireDate. 
-- Además, deberá mostrar dos columnas adicionales en las que se muestre un cálculo de la Edad de la persona basado en BirthDate 
-- y la Antigüedad basado en HireDate.


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
