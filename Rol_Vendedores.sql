-- 3 - Crear un nuevo rol llamado Vendedores, los miembros de este rol deberán poseer los permisos de lectura y escritura (actualización y borrado) 
-- sobre el schema Sales y 
-- permisos de lectura sobre las tablas Production. ProductCategory y Production.Product

CREATE ROLE db_Vendedores AUTHORIZATION Production. ProductCategory
GO
GRANT SELECT ON SCHEMA::Production.ProductCategory TO db_Sales_ProductCategory_Role
GO
GRANT SELECT ON SCHEMA::Production.Product TO db_Sales_Product_Role
GO