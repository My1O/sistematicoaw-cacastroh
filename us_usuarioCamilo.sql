--4 - Crear un usuario con las iniciales de tus dos nombres + tu primer apellido. Si tu nombre es Felix Ruben Garc�a tu login y
 -- usuario deber�an ser frgarcia. Hacer al usuario miembro del rol Vendedores

CREATE USER [cacastro] FOR LOGIN [userVendedores] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [Vendedores] ADD MEMBER [cacastro]
GO