/* 1- Diseñe un procedimiento almacenado (stored procedure) para ingresar un nuevo registro en la tabla Production. ProductCategory, 
puede omitir los parámetros que estime convenientes y hacer uso de los valores por defecto que la configuración de la tabla permita. NOTA: 
Una columna o una variable local de tipo de datos uniqueidentifier se puede inicializar en un valor de las siguientes formas:
Mediante la función NEWID
Mediante la conversión a partir de una constante de cadena con el formato xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx, donde cada x es un dígito hexadecimal en el intervalo 0-9 o a-f.
 Por ejemplo, 6F9619FF-8B86-D011-B42D-00C04FC964FF es un valor uniqueidentifier válido.
En el ejemplo siguiente se convierte un valor uniqueidentifier a un tipo de datos char
DECLARE @myid uniqueidentifier = NEWID(); 

SELECT CONVERT(char(255), @myid) AS 'char';
*/
--SELECT * FROM Production.ProductCategory

CREATE PROCEDURE usp_AltaRegistro(
@Nombre VARCHAR(70)
)
AS
BEGIN
DECLARE @MyId uniqueidentifier = NEWID()
INSERT INTO Production.ProductCategory([Name],rowguid,ModifiedDate)
VALUES (@Nombre,@MyId,'20221008')
END

-- Exec usp_AltaRegistro'Auto Parts'