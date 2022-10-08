/* 1- Dise�e un procedimiento almacenado (stored procedure) para ingresar un nuevo registro en la tabla Production. ProductCategory, 
puede omitir los par�metros que estime convenientes y hacer uso de los valores por defecto que la configuraci�n de la tabla permita. NOTA: 
Una columna o una variable local de tipo de datos uniqueidentifier se puede inicializar en un valor de las siguientes formas:
Mediante la funci�n NEWID
Mediante la conversi�n a partir de una constante de cadena con el formato xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx, donde cada x es un d�gito hexadecimal en el intervalo 0-9 o a-f.
 Por ejemplo, 6F9619FF-8B86-D011-B42D-00C04FC964FF es un valor uniqueidentifier v�lido.
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