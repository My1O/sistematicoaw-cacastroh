-- 3 - Crear un nuevo rol llamado Vendedores, los miembros de este rol deberán poseer 
-- los permisos de lectura y escritura (actualización y borrado) sobre el schema Sales y 
-- permisos de lectura sobre las tablas Production.ProductCategory y Production.Product
/*
CREATE LOGIN [userVendedores] WITH PASSWORD='Welcome2022', DEFAULT_DATABASE=[AdventureWorks2019]
GO
*/
CREATE ROLE Vendedores
GO
GRANT INSERT ON SCHEMA::Sales TO Vendedores
GO
GRANT UPDATE ON SCHEMA::Sales TO Vendedores
GO
GRANT SELECT ON SCHEMA::Sales TO Vendedores
GO
GRANT DELETE ON SCHEMA::Sales TO Vendedores
GO
GRANT SELECT ON SCHEMA::Production.ProductCategory TO Vendedores
GO
GRANT SELECT ON SCHEMA::Production.Product TO Vendedores
GO