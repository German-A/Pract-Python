CREATE DATABASE  "EJEMPLO"
SELECT name, physical_name AS current_location
FROM sys.master_files
WHERE database_id = DB_ID('EJEMPLO');
DROP DATABASE EJEMPLO;
GO

create DATABASE "GAA";
use GAA
GO
drop table Datos
CREATE TABLE Datos(
    id INT identity(1,1) PRIMARY KEY,
    nom_us VARCHAR(100),
    direccion_ip VARCHAR (100),
    nom_maq VARCHAR(100),
	oficina varchar(50)
);
go
use GAA
BULK INSERT Datos
FROM 'C:\Users\Administrador\Desktop\NuevaCaarpeta\Listado.csv'
WITH 
(
    FIELDTERMINATOR = ';',  
    ROWTERMINATOR = '\n',
    FIRSTROW = 2  -- Esto omite la primera fila (encabezados)
);
SELECT * FROM Datos;

INSERT INTO Datos (nom_us, direccion_ip, nom_maq, oficina)
VALUES
('Ana Claudia Alva Valera', '172.20.50.124', NULL, 'UREG'),
('Selene Jassmin Carlos Avila', '172.20.50.118', NULL, 'UREG'),
('Maria Jose Davila Malpica', '172.20.50.166', NULL, 'UREG'),
('Sandy Vergara Alfaro', '172.20.50.78', NULL, 'UREG'),
('Renzo Prieto Villena', '172.20.50.120', NULL, 'UREG'),
('Andy Paul Silva Gamarra', '172.20.50.59', NULL, 'UREG'),
('Fernando Luis Castillo Mendoza', '172.20.50.205', NULL, 'UREG'),
('Elsa Graciela Campos Gonzales', '172.20.50.213', NULL, 'UREG'),
('Diana Argomedo', '172.20.52.212', NULL, 'Mesa De Partes'),
('Diana Soledad Vasquez Zavala', '172.20.52.206', NULL, 'Mesa De Partes'),
('Apagada', '172.20.50.122', NULL, 'Mesa De Partes'),
('Jhan Christian Obando Chafloque', '172.20.52.211', NULL, 'Orientacion'),
('Willy Enrique Yupanqui Ventura', '172.20.50.42', NULL, 'Orientacion'),
('Jhan Christian Obando Chafloque', '172.20.52.225', NULL, 'Orientacion'),
('Patricia Arteaga Rios', '172.20.50.252', NULL, 'Orientacion'),
('Xiomara Fiorella Mendez Flores', '172.20.50.43', NULL, 'Orientacion'),
('Fotocopiadora', '172.20.52.203', NULL, 'Orientacion'),
('Julio Joseph Andree Gutierrez Fernandez', '172.20.50.231', NULL, 'Caja y Digitadores'),
('NULL', '172.20.50.108', NULL, 'Caja y Digitadores'),
('Ivan Ricardo Solar Alfaro', '172.20.50.237', NULL, 'Caja y Digitadores'),
('cpereda', '172.20.50.82', NULL, 'Caja y Digitadores'),
('jborisl Sjaramil', '172.20.50.248', NULL, 'Caja y Digitadores'),
('Carlos Eduardo Grados Jimenez', '172.20.50.181', NULL, 'Caja y Digitadores'),
('rcarbajal rguillen', '172.20.50.13', NULL, 'Caja y Digitadores'),
('Ronald (caja 02)', '172.20.50.102', NULL, 'Caja y Digitadores'),
('cgrados', '172.20.50.198', NULL, 'Caja y Digitadores'),
('Luis Enrique Rodriguez Orozco', '172.20.50.243', NULL, 'Caja y Digitadores'),
('Luis Jose Bardales Justiniano', '172.20.50.191', NULL, 'Caja y Digitadores'),
('Gianella Tatiana Quezada Castro', '172.20.50.203', NULL, 'Caja y Digitadores'),
('nsolisg', '172.20.53.163', NULL, 'Imagen'),
('Shirley Katherine Torres Calderon', '172.20.53.178', NULL, 'Imagen'),
('Geraldine Estefany Rodriguez Soles', '172.20.52.252', NULL, 'Imagen'),
('Manuel Leon Cabrera', '172.20.50.19', NULL, 'Imagen'),
('Angel Ernesto Apestegui Valencia', '172.20.50.132', NULL, 'Imagen'),
('Victor Hugo Paredes Torres', '172.20.53.131', NULL, 'Imagen'),
('lucia delgado a', '172.20.52.254', NULL, 'Imagen'),
('impresora', '172.20.50.194', NULL, 'Imagen'),
('NULL', '172.20.50.86', NULL, 'Visualización'),
('NULL', '172.20.50.61', NULL, 'Visualización'),
('NULL', '172.20.50.11', NULL, 'Visualización'),
('NULL', '172.20.50.14', NULL, 'Visualización'),
('NULL', '172.20.50.57', NULL, 'Visualización'),
('NULL', '172.20.50.107', NULL, 'Visualización'),
('NULL', '172.20.50.50', NULL, 'Seguridad'),
('Helen Saavedra Silva', '172.20.52.231', NULL, 'Certificados'),
('Claudia Elizabeth Moncada Linares', '172.20.52.237', NULL, 'Certificados'),
('Lisbeth Fiorella Infante Lopez', '172.20.52.250', NULL, 'Certificados'),
('Adan Lescano Zavaleta', '172.20.52.232', NULL, 'Certificados'),
('Pract- Victoria Cecilia Azabache Leon', '172.20.52.224', NULL, 'Certificados'),
('Christian Michel Carrasco Celis', '172.20.52.201', NULL, 'Certificados'),
('Silvia Huiman Ganoza', '172.20.52.239', NULL, 'Certificados'),
('Diana Carolina Carlos Coronado', '172.20.52.233', NULL, 'Certificados'),
('Carlos Pereda Ulloa', '172.20.50.226', NULL, 'Archivo');

INSERT INTO Datos (nom_us, direccion_ip, nom_maq, oficina)
VALUES
('Alex Jimenez Verastegui', '172.20.50.183', NULL, 'Archivo'),
('Silvia Solano Villacorta', '172.20.50.12', NULL, 'Archivo'),
('Marco Purihuaman', '172.20.50.189', NULL, 'Archivo'),
('Carlos Pereda Ulloa', '172.20.50.171', NULL, 'Archivo'),
('Zarela Guevara Minano', '172.20.50.70', NULL, 'Archivo'),
('Paul Edward Espina Cuba', '172.20.50.197', NULL, 'Archivo'),
('fotocop', '172.20.50.36', NULL, 'Archivo'),
('fotocop', '172.20.50.230', NULL, 'Archivo'),
('Plotter', '172.20.50.20', NULL, 'Archivo'),
('Carmen Pilar Morillas Dominguez', '172.20.50.97', NULL, 'Legal'),
('jefe de área', '172.20.52.195', NULL, 'Legal'),
('apagada', '172.20.50.224', NULL, 'Legal'),
('apagada', '172.20.50.174', NULL, 'Legal'),
('tmunos', '172.20.50.175', NULL, 'Legal'),
('Andres William Flores Llumpo', '172.20.50.125', NULL, 'Legal'),
('Miluskha Saray Cubas Parraguez', '172.20.50.137', NULL, 'OCI'),
('Diego Ñique', '172.20.50.122', NULL, 'OCI'),
('Jesica Alban', '172.20.50.199', NULL, 'OCI'),
('Jorge Ñaupa', '172.20.50.90', NULL, 'OCI'),
('Rosmery Bocanegra', '172.20.50.228', NULL, 'OCI'),
('Monica Roxana Noriega Angeles', '172.20.50.142', NULL, 'OCI'),
('Janina Herrera', '172.20.50.154', NULL, 'OCI'),
('Anali Rodrigues', '172.20.50.18', NULL, 'OCI'),
('Roberto Carlo Rodes', '172.20.50.66', NULL, 'OCI'),
('Rosa perez', '172.20.50.235', NULL, 'Tesoreria'),
('Mavell chuquival', '172.20.50.161', NULL, 'Tesoreria'),
('Silvia Berastegui', '172.20.50.244', NULL, 'Tesoreria'),
('Davila Perez', '172.20.50.62', NULL, 'Tesoreria'),
('Gustavo Yncio', '172.20.50.25', NULL, 'Tesoreria'),
('PC para Scann', '172.20.50.248', NULL, 'Abastecimiento'),
('Sandra Milena Sanchez Motta', '172.20.52.200', NULL, 'Abastecimiento'),
('Sandy Evelyn Jaramillo Alva', '172.20.52.196', NULL, 'Abastecimiento'),
('Prac', '172.20.52.199', NULL, 'Abastecimiento'),
('siga', '172.20.50.207', NULL, 'Abastecimiento'),
('Diana Milagros Valverde Rondo', '172.20.52.202', NULL, 'Abastecimiento'),
('Jessy Diaz', '172.20.52.194', NULL, 'Abastecimiento'),
('Fotocopiadora', '172.20.50.87', NULL, 'Abastecimiento'),
('jefa', '172.20.50.130', NULL, 'Contabilidad'),
('Juan Humberto Pastor Fernandez', '172.20.52.204', NULL, 'Contabilidad'),
('Elias Antonio Padilla Alzamora', '172.20.50.48', NULL, 'Contabilidad'),
('Pract', '172.20.52.197', NULL, 'Contabilidad'),
('Juan Jose Silva Graos', '172.20.50.76', NULL, 'Tribunal'),
('Wilson Mauricio Bernal Maldonado', '172.20.50.240', NULL, 'Tribunal'),
('Ereni Artega Soles', '172.20.52.208', NULL, 'Tribunal'),
('Yamiz Jonathan Oblea Silva', '172.20.50.129', NULL, 'Tribunal'),
('NULL', '172.20.50.151', NULL, 'Tribunal'),
('Giuliana Esther Santos Mercedes', '172.20.50.109', NULL, 'Tribunal'),
('Maria Alexandra Zapata Pardo de Figueroa', '172.20.50.206', NULL, 'Tribunal'),
('Dorothy Yuvithza Armas Lopez', '172.20.50.114', NULL, 'Tribunal'),
('Walter Morgan Plaza', '172.20.50.117', NULL, 'Tribunal'),
('NULL', '52.209', NULL, 'Jefatura'),
('Carlos Pastor Casas', '172.20.50.164', NULL, 'Jefatura'),
('Yakelin Malea', '172.20.50.65', NULL, 'Catastro'),
('Maria Alejandra Frias', '172.20.50.249', NULL, 'Catastro'),
('Daniel Villalovos', '172.20.50.91', NULL, 'Catastro'),
('Javier Garcia', '172.20.50.92', NULL, 'Catastro'),
('Ruby Leon', '172.20.50.143', NULL, 'Catastro'),
('Amanda Molina', '172.20.50.121', NULL, 'Catastro'),
('Ruben Dario Pelaez de la Cruz', '172.20.50.176', NULL, 'Catastro'),
('Alexa Collantes', '172.20.50.56', NULL, 'Catastro'),
('Rosmery Cruz Cornelio', '172.20.50.238', NULL, 'Catastro'),
('Jorge Sicha', '172.20.50.100', NULL, 'Catastro'),
('Brigitte Bocanegra Alayo', '172.20.50.180', NULL, 'Catastro'),
('Katia Campos', '172.20.50.54', NULL, 'Catastro'),
('Leady Abarca', '172.20.50.145', NULL, 'Catastro'),
('Busqueda Registral', '172.20.52.218', NULL, 'Catastro'),
('Patricia Castillo Moran', '172.20.50.173', NULL, 'Catastro'),
('Sofia Elizabeth Huerta', '172.20.50.179', NULL, 'Catastro'),
('Plotter', '172.20.50.247', NULL, 'Catastro'),
('HP', '172.20.50.60', NULL, 'Catastro'),
('Cindy Pizan', '172.20.50.131', NULL, 'Vehicular 5-1'),
('Bikel Araujo', '172.20.50.144', NULL, 'Vehicular 5-1'),
('Yessica Bautista', '172.20.50.165', NULL, 'Vehicular 5-1'),
('Sheyla Walter', '172.20.50.204', NULL, 'Vehicular 5-1'),
('Rocio del Pilar', '172.20.50.186', NULL, 'Vehicular 5-1'),
('Jorge Mendez', '172.20.50.168', NULL, 'Vehicular 5-1'),
('Juan LuCiano Cruz Corcuera', '172.20.50.89', NULL, 'Secretaria-Tecn'),
('Anggie Dennis Santa Cruz Mujica', '172.20.50.218', NULL, 'Secretaria-Tecn'),
('Monika Lily Fernandez Argomedo', '172.20.52.243', NULL, 'Mineria'),
('Carlos Matos', '172.20.52.244', NULL, 'Mineria'),
('Pract - Jeanet Avaloz', '172.20.53.136', NULL, 'Vehicular'),
('Patricia Urrunaga Molina', '172.20.53.179', NULL, 'Vehicular'),
('Jesica Benites', '172.20.53.137', NULL, 'Vehicular'),
('Patricia Garcia', '172.20.50.152', NULL, 'Vehicular'),
('Cynthia Maricielo', '172.20.53.140', NULL, 'Vehicular'),
('Pamela Caro Perez', '172.20.53.141', NULL, 'Vehicular'),
('Rubi Rufino', '172.20.53.169', NULL, 'Vehicular'),
('Alina Diaz', '172.20.53.142', NULL, 'Vehicular'),
('Daniel Montenegro', '172.20.53.154', NULL, 'Vehicular'),
('Christian Ulloa', '172.20.50.227', NULL, 'Vehicular'),
('Rovert Zavaleta', '172.20.50.163', NULL, 'Vehicular'),
('Herlinda Neciosup', '172.20.53.133', NULL, 'Vehicular');
select*from Datos;

INSERT INTO Datos (nom_us, direccion_ip, nom_maq, oficina)
VALUES
('Rosa Elvira Garcia y Garcia', '172.20.50.177', NULL, 'Vehicular'),
('Patricia Ravanal', '172.20.53.151', NULL, 'Vehicular'),
('Deysi Prettel', '172.20.52.198', NULL, 'Personal Y Presupuesto'),
('Natali Silva', '172.20.52.221', NULL, 'Personal Y Presupuesto'),
('Javier Mora', '172.20.52.219', NULL, 'Personal Y Presupuesto'),
('Cindy Rijalba Diaz', '172.20.52.235', NULL, 'Personal Y Presupuesto'),
('Carlos Holguin', '172.20.52.234', NULL, 'Personal Y Presupuesto'),
('Gaby Bobadilla', '172.20.52.222', NULL, 'Personal Y Presupuesto'),
('Aliaga', '172.20.52.226', NULL, 'Personal Y Presupuesto'),
('Janina Quiroz', '172.20.52.227', NULL, 'Personal Y Presupuesto'),
('Claudia Paredez', '172.20.52.230', NULL, 'Personal Y Presupuesto'),
('Romina Temoche', '172.20.52.229', NULL, 'Personal Y Presupuesto'),
('Jessica Delgado', '172.20.52.228', NULL, 'Personal Y Presupuesto'),
('Impresora', '172.20.52.220', NULL, 'Personal Y Presupuesto'),
('Jessica Diaz Delgado', '172.20.50.95', NULL, 'Juridicas'),
('Maria del Carmen Suarez', '172.20.50.185', NULL, 'Juridicas'),
('Patricia Juarez Dominguez', '172.20.53.184', NULL, 'Juridicas'),
('Mariann Oliva', '172.20.53.177', NULL, 'Juridicas'),
('Neri Ulloa Abanto', '172.20.50.64', NULL, 'Juridicas'),
('Victor Razuri', '172.20.50.105', NULL, 'Juridicas'),
('Marjorie Leyva Monsefu', '172.20.53.144', NULL, 'Juridicas'),
('Thalia Barrios Lopez', '172.20.50.79', NULL, 'Juridicas'),
('Liz Vicuna', '172.20.53.157', NULL, 'Juridicas'),
('Karla Neyra Castillo', '172.20.53.156', NULL, 'Juridicas'),
('Elisa Alva Bazan', '172.20.53.164', NULL, 'Juridicas'),
('Luis Terrones', '172.20.53.145', NULL, 'Juridicas'),
('Tito Torres', '172.20.50.149', NULL, 'Juridicas'),
('Katerine Johanson', '172.20.50.170', NULL, 'Juridicas'),
('Ximena Antonella Jauregui', '172.20.50.99', NULL, 'Juridicas'),
('Elmer Daniel Ramirez Malca', '172.20.50.63', NULL, 'Juridicas'),
('Lourdes Cornejo', '172.20.50.45', NULL, 'Proyecto SGTD'),
('Milagros Nunes', '172.20.50.94', NULL, 'Proyecto SGTD'),
('Ercilia Aracely Hernandez Lezama', '172.20.50.77', NULL, 'Proyecto SGTD'),
('Erich', 'NULL', NULL, 'UTI'),
('Betty Orbegoso Legoas', '172.20.53.160', NULL, 'UTI'),
('Pool Rubio Cuba', '172.20.50.33', NULL, 'UTI'),
('Luis Zafra Abanto', '172.20.50.34', NULL, 'UTI'),
('NULL', '172.20.50.8', NULL, 'UTI'),
('Ortega', '172.20.50.16', NULL, 'UTI'),
('Percy Velasquez', '172.20.50.71', NULL, 'UTI'),
('Karla Portilla', '172.20.53.158', NULL, 'UTI'),
('Karla Portilla (SIGA)', '172.20.50.188', NULL, 'UTI'),
('German Ayala', '172.20.50.184', NULL, 'UTI'),
('Victor Raúl', '172.20.53.130', NULL, 'UTI'),
('Cristian Reyes', '172.20.50.83', NULL, 'UTI'),
('Cristian Cristobal', '172.20.52.215', NULL, 'UTI'),
('Renzo vasquez', '172.20.53.132', NULL, 'UTI'),
('Renzo vasquez', '172.20.50.27', NULL, 'UTI'),
('Pool Rubio Cuba', '172.20.50.26', NULL, 'UTI'),
('Dennis Jara Gamboa', '172.20.53.166', NULL, 'UTI'),
('Percy Velasquez', '172.20.50.167', NULL, 'UTI'),
('Franco Muñoz', '172.20.50.52', NULL, 'UTI'),
('Victor Raúl', '172.20.53.189', NULL, 'UTI'),
('Fotocopiadora', '172.20.53.187', NULL, 'UTI'),
('Helen Marianela Porras Garcia', '172.20.50.110', NULL, 'Predios'),
('Miriam bazan', '172.20.50.73', NULL, 'Predios'),
('Sesigra Rosa Elizabeth Cornejo', '172.20.50.217', NULL, 'Predios'),
('Gloria Monja', '172.20.50.193', NULL, 'Predios'),
('Victor Roberto Pelaez Muguerza', '172.20.50.32', NULL, 'Predios'),
('Ivan Rebaza', '172.20.50.128', NULL, 'Predios'),
('Mirian Ysabel Bazan Mendez', '172.20.50.112', NULL, 'Predios'),
('Pract Italo Martin Gomez', '172.20.50.44', NULL, 'Predios'),
('Beronika Carolina Salcedo Narvaez', '172.20.50.80', NULL, 'Predios'),
('Mario Mallqui Romero', '172.20.50.75', NULL, 'Predios'),
('Jose Arturo Mendoza Gutierrez', '172.20.50.210', NULL, 'Predios'),
('Miguel Angel Torres Reyna', '172.20.50.223', NULL, 'Predios'),
('Carlos Alexis Rojas Chavez', '172.20.50.68', NULL, 'Predios'),
('Pract Sevillano Chavez Delmira Emira', '172.20.50.209', NULL, 'Predios'),
('Cesar Eduardo Dionicio Quezada', '172.20.50.232', NULL, 'Predios'),
('Jhans Ricardo Diaz Malaver', '172.20.50.153', NULL, 'Predios'),
('Cynthia Gisella Aranda Pimentel', '172.20.50.81', NULL, 'Predios'),
('Carlos Fabricio Pajares Peralta', '172.20.50.242', NULL, 'Predios'),
('Eberardo Jose Meneses Reyes', '172.20.50.98', NULL, 'Predios'),
('Rafael Humberto Perez Silva', '172.20.50.202', NULL, 'Predios'),
('Karen Judith Toledo Guerrero', '172.20.50.221', NULL, 'Predios'),
('Kiomara Tatiana Argomedo Garcia', '172.20.50.134', NULL, 'Predios'),
('Karina Ugaz', '172.20.50.140', NULL, 'Predios'),
('Pract Mines Cabrera Diego Alonso', '172.20.50.169', NULL, 'Predios'),
('Julio Cesar Moran Costa', '172.20.50.158', NULL, 'Predios'),
('Silvia Carolina Alcanta Valdivia', '172.20.50.101', NULL, 'Predios'),
('Daniel Fernando Montoya Lopez', '172.20.50.215', NULL, 'Predios'),
('James Aguilar Rodriguez', '172.20.50.200', NULL, 'Predios'),
('Pract Brenda Sheyla Pelaez Soberon', '172.20.50.236', NULL, 'Predios'),
('Fred William Quilcat Quilcat', '172.20.50.67', NULL, 'Predios'),
('Christian David Fhon Trigoso', '172.20.50.40', NULL, 'Predios'),
('Sandra Noriega Reyes', '172.20.50.207', NULL, 'Predios'),
('Juana Deyanira Fernanda Bobadilla Carrera', '172.20.50.139', NULL, 'Predios'),
('Pract Mauricio Alejandro Gonzales Azabache', '172.20.50.133', NULL, 'Predios'),
('Telmo', '172.20.52.246', NULL, 'Predios'),
('Leonardo Fabio Moreno Polo', '172.20.50.119', NULL, 'Predios'),
('sHurtadoh', '172.20.50.225', NULL, 'Predios'),
('Victor Chavez', '172.20.50.126', NULL, 'Predios');
select* from Datos
ORDER BY direccion_ip DESC;
use GAA

select * from Datos where direccion_ip like '172.20.50.10%' 
ORDER BY direccion_ip DESC; 

SELECT direccion_ip FROM Datos WHERE nom_us like '172.20.50.1%' ORDER BY direccion_ip DESC;


SELECT direccion_ip FROM Datos WHERE nom_us like 'Ana%';

SELECT * FROM Datos WHERE nom_us like 'Ana%'; 

SELECT nom_us, direccion_ip FROM Datos WHERE nom_us like '%maria%';
go 
use gaa
SELECT nom_us, direccion_ip, oficina
FROM Datos
WHERE nom_us LIKE '%jose%'  -- Filtra los resultados que contienen la subcadena 'jose'
ORDER BY
  CASE
    WHEN LEFT(nom_us, LEN('jose')) = 'jose' THEN 0  -- Prioriza los registros cuyo nombre comienza con 'jose'
    ELSE 1  -- El resto de los registros
  END,
  nom_us ASC;  -- Orden alfabético para los demás
go
SELECT @@VERSION;

SELECT 
    local_net_address 
FROM 
    sys.dm_exec_connections 
WHERE 
    session_id = @@SPID;

go
use GAA
SELECT nom_us, direccion_ip, oficina FROM Datos WHERE nom_us LIKE '%carmen%' ORDER BY
  CASE
    WHEN nom_us LIKE 'carmen%' THEN 0  
    ELSE 1  
  END,
  nom_us ASC;  
go
use AdventureWorks2022
go
select name from sys.tables where type = 'U' order by name;
go

SELECT table_name
FROM INFORMATION_SCHEMA.TABLES
WHERE table_type = 'BASE TABLE' AND table_catalog = 'AdventureWorks2022';

SELECT table_schema AS Esquema, 
       table_name AS NombreDeLaTabla
FROM INFORMATION_SCHEMA.TABLES
WHERE table_type = 'BASE TABLE' 
  AND table_catalog = 'AdventureWorks2022'
ORDER BY table_name;

select table_schema as esquema, table_name AS NombreDeLaTabla 
from INFORMATION_SCHEMA.TABLES 
WHERE TABLE_schema = 'Person' 
  AND table_catalog = 'AdventureWorks2022'

DECLARE @SQL NVARCHAR(MAX) = '';

-- Generar el comando ALTER SCHEMA para todas las tablas del esquema 'Person'
SELECT @SQL = @SQL + 'ALTER SCHEMA Persona TRANSFER Person.' + t.name + ';' + CHAR(13)
FROM sys.tables t
WHERE t.schema_id = SCHEMA_ID('Person'); -- Esquema de origen

-- Ejecutar los comandos generados
EXEC sp_executesql @SQL;

use AdventureWorks2022
go
create schema Persona;

select table_schema AS Esquema, table_name as nombre 
from INFORMATION_SCHEMA.TABLES 
where TABLE_SCHEMA ='Purchasing';

Create schema Produccion;

DECLARE @SQL NVARCHAR(MAX) = '';

-- Generar el comando ALTER SCHEMA para todas las tablas del esquema 'Person'
SELECT @SQL = @SQL + 'ALTER SCHEMA Compras TRANSFER Purchasing.' + t.name + ';' + CHAR(13)
FROM sys.tables t
WHERE t.schema_id = SCHEMA_ID('Purchasing'); -- Esquema de origen

-- Ejecutar los comandos generados
EXEC sp_executesql @SQL;

select table_schema as esquema, table_name as nombre 
from INFORMATION_SCHEMA.tables 
where table_schema = 'sales'

select table_schema as esquema, table_name as nombre
from information_schema.tables 
where table_schema = 'Produccion'
exec sp_rename 'Produccion.ScrapReason','RazonDeDesperdicio','OBJECT';


EXEC sp_rename 'Produccion.ProductCategory', 'CategoriaDeProducto', 'OBJECT';

-- Renombrar la tabla ProductCostHistory a HistorialDeCostosDeProducto
EXEC sp_rename 'Produccion.ProductCostHistory', 'HistorialDeCostosDeProducto', 'OBJECT';

-- Renombrar la tabla ProductDocument a DocumentoDeProducto
EXEC sp_rename 'Produccion.ProductDocument', 'DocumentoDeProducto', 'OBJECT';

-- Renombrar la tabla ProductInventory a InventarioDeProducto
EXEC sp_rename 'Produccion.ProductInventory', 'InventarioDeProducto', 'OBJECT';

-- Renombrar la tabla ProductListPriceHistory a HistorialDePreciosDeListaDeProducto
EXEC sp_rename 'Produccion.ProductListPriceHistory', 'HistorialDePreciosDeListaDeProducto', 'OBJECT';

-- Renombrar la tabla ProductModelIllustration a IlustracionDeModeloDeProducto
EXEC sp_rename 'Produccion.ProductModelIllustration', 'IlustracionDeModeloDeProducto', 'OBJECT';

-- Renombrar la tabla BillOfMaterials a ListaDeMateriales
EXEC sp_rename 'Produccion.BillOfMaterials', 'ListaDeMateriales', 'OBJECT';

-- Renombrar la tabla ProductPhoto a FotoDeProducto
EXEC sp_rename 'Produccion.ProductPhoto', 'FotoDeProducto', 'OBJECT';

-- Renombrar la tabla ProductProductPhoto a FotoDeProductoRelacionado
EXEC sp_rename 'Produccion.ProductProductPhoto', 'FotoDeProductoRelacionado', 'OBJECT';

-- Renombrar la tabla TransactionHistory a HistorialDeTransacciones
EXEC sp_rename 'Produccion.TransactionHistory', 'HistorialDeTransacciones', 'OBJECT';

-- Renombrar la tabla ProductReview a ReseñaDeProducto
EXEC sp_rename 'Produccion.ProductReview', 'ResenaDeProducto', 'OBJECT';

-- Renombrar la tabla TransactionHistoryArchive a ArchivoDeHistorialDeTransacciones
EXEC sp_rename 'Produccion.TransactionHistoryArchive', 'ArchivoDeHistorialDeTransacciones', 'OBJECT';

-- Renombrar la tabla ProductSubcategory a SubcategoriaDeProducto
EXEC sp_rename 'Produccion.ProductSubcategory', 'SubcategoriaDeProducto', 'OBJECT';

-- Renombrar la tabla UnitMeasure a UnidadDeMedida
EXEC sp_rename 'Produccion.UnitMeasure', 'UnidadDeMedida', 'OBJECT';

-- Renombrar la tabla WorkOrder a OrdenDeTrabajo
EXEC sp_rename 'Produccion.WorkOrder', 'OrdenDeTrabajo', 'OBJECT';

-- Renombrar la tabla Culture a Cultura
EXEC sp_rename 'Produccion.Culture', 'Cultura', 'OBJECT';

-- Renombrar la tabla WorkOrderRouting a EnrutamientoDeOrdenDeTrabajo
EXEC sp_rename 'Produccion.WorkOrderRouting', 'EnrutamientoDeOrdenDeTrabajo', 'OBJECT';

-- Renombrar la tabla Document a Documento
EXEC sp_rename 'Produccion.Document', 'Documento', 'OBJECT';

-- Renombrar la tabla Illustration a Ilustracion
EXEC sp_rename 'Produccion.Illustration', 'Ilustracion', 'OBJECT';

-- Renombrar la tabla Location a Ubicacion
EXEC sp_rename 'Produccion.Location', 'Ubicacion', 'OBJECT';
use AdventureWorks2022
BACKUP DATABASE AdventureWorks2022
TO DISK = 'C:\Users\Administrador\Desktop\Nueva carpeta\BD.bak'
WITH FORMAT, MEDIANAME = 'DBBackup', NAME = 'Full Backup of MiBaseDeDatos';


BACKUP DATABASE [AdventureWorks2022]
TO DISK = 'C:\Users\Administrador\Desktop\Nuevacarpeta\AdventureWorks2022_Backup.bak'
WITH FORMAT, MEDIANAME = 'DBBackup', NAME = 'Full Backup of AdventureWorks2022';

SELECT 
    OBJECT_NAME(referencing_id) AS ReferencingObject,
    o.type_desc AS ObjectType,
    c.name AS ReferencedColumn
FROM 
    sys.sql_expression_dependencies AS sed
JOIN 
    sys.objects AS o ON sed.referencing_id = o.object_id
JOIN 
    sys.columns AS c ON c.object_id = sed.referenced_id
WHERE 
    sed.referencing_id IN (SELECT object_id FROM sys.objects WHERE name = 'vAdditionalContactInfo')

	EXEC sp_helptext 'Person.vAdditionalContactInfo';

BACKUP DATABASE AdventureWorks2022
TO DISK = 'C:\Backup\AdventureWorks2022.bak';
drop database ejem;

USE master;
GO

ALTER DATABASE AdventureWorks2022 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
ALTER DATABASE AdventureWorks2022 MODIFY NAME = AdventureEnglish;
GO

USE master;
GO

ALTER DATABASE AdventureEnglish SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

-- Paso 2: Renombrar la base de datos
ALTER DATABASE AdventureEnglish MODIFY NAME = BaseDatos;
GO

-- Paso 3: Habilitar el acceso de múltiples usuarios
ALTER DATABASE BaseDatos SET MULTI_USER;
GO



USE master;
GO
ALTER DATABASE BaseDatos SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

RESTORE DATABASE AdventureWorks2022
FROM DISK = 'C:\path\to\your\backup\AdventureWorks2022.bak'
WITH REPLACE;
GO

ALTER DATABASE BaseDatos SET MULTI_USER;
GO