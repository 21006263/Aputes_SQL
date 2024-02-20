use AdventureWorks2022
go

select * from Person.Person
create table personEjempl(
firstname varchar(50),
lastname varchar(50)
)
insert into personEjempl
select firstname, lastname from Person.Person
select * from personEjempl



-- Select y e inner join de dos tablas y update
SELECT *
FROM Person.Person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = p.BusinessEntityID
WHERE e.JobTitle = 'Sales Representative' AND p.FirstName = 'Michael';

update Person.Person set Suffix = e.NationalIDNumber
FROM Person.Person p
INNER JOIN HumanResources.Employee e ON e.BusinessEntityID = p.BusinessEntityID
WHERE e.JobTitle = 'Sales Representative' AND p.FirstName = 'Michael';



select * from HumanResources.Employee
select * from Person.Person


--- relaciona por el campor BusimesEntyID


-- Asegúrate de que no haya una vista con el mismo nombre ya creada
IF OBJECT_ID('VistaPersona', 'V') IS NOT NULL
    DROP VIEW VistaPersona;
GO

-- Crea la vista
CREATE VIEW VistaPersona AS
SELECT FirstName, LastName
FROM Person.Person;
GO

-- Selecciona datos de la vista
SELECT * FROM VistaPersona;














[28/01/2024 23:21] Henry: --CONTAINS (para búsquedas más precisas)

SELECT FROM person. Address A WHERE CONTAINS(A. AddressLinel, "first avenue"")

--CONTAINS/AND/AND NOT/OR

SELECT from person. Address A WHERE CONTAINS (A.AddressLinel, avenue du AND port

Candidate
[28/01/2024 23:24] Henry: CONTAINS (para búsquedas más precisas)

HSELECT FROM person. Address A

WHERE CONTAINS (A. AddressLinel, "first avenue")

--CONTAINS/AND/AND NOT/OR

SELECT from person. Address A

WHERE CONTAINS (A. AddressLinel, avenue du" AND port)

--CONTAINS NEAR

SELECT from person. Address A

WHERE CONTAINS(A.. AddressLinel, 5415 san" NEAR dr')

SELECT from person Address A

WHERE CONTAINS(A. AddressLinel, NEAR((21, centrale), 6)')

SELECT from person. Address Aorder by len(AddressLinel) desc WHERE CONTAINS (A. AddressLinel, NEAR((hilton, factory, 25), 5))
[29/01/2024 21:19] Henry: SELECT FROM Person.person P LEFT JOIN Person. EmailAddress E ON E.BusinessEntityID P.Business EntityID WHERE ISNULL(E.BusinessEntityID,'') AND ISNULL(P.title,'")=

EM

EM

NULL

NULL

Thery

D'Mers

mpartment

mployee Departments

Candidate
[29/01/2024 21:26] Henry: Word2017(SA (050 Sentencias Astucks Works2017 SA (60

ON E.Business EntityID P. Business EntityID WHERE ISNULL(E.BusinessEntityID, ")=" AND ISNULL(P.title,)"

declare @nombre char(30) NULL set @nombre 'Roberto'

SELECT from person.person

WHERE firstname (CASE WHEN isnull(@nombre, ")<>'' THEN @nombre

ELSE FirstName

END

Laste

NULL

NIAL

MILL

MALL

NILL

HAL

BULL

HAL

NULL

HAL

BULL

MAL

HAL

M

ON

MU
[29/01/2024 22:04] Henry: S

Sentence Actual Works2017 (SA (55)

from person.person

SELECT INTO (para copiar tabla en otra BD)

SELECT INTO AdventureBak. personAddr from person.Address

--SELECT INTO (para copiar tabla con campo IDENTITY)

SELECT IDENTITY(int,1,1) as id, INTO AdventureBak.. personPhoneNew FROM person. PersonPhone

--CLONEDATABASE

DBCC CLONEDATABASE (Adventureßak, AdventureCopia)

Database cloning fur Adventureflak has started with target as "Adventurecopila Database cloning for "Adventuretak has finished. Cloned database is 'AdventureCopia. Database Adventurecopia is a cloned database. A cloned database should be used for diagn DBCC execution completed. If pace printed error smssages, contact your system administrates

Completion time: 2019-10-11T07:38 117,1014423-03:00

R
[29/01/2024 22:21] Henry: X CURSOSSERVER Adi non med

SELEL from person person

WHERE firstname

(CASE WHEN (

@nombre,

THEN

@nombr

ENO

ELSE FirstName

--BUSQUEDAS ENTRE BASES DE DATOS

INSERT INTO person. EmailAddress

SELECT from person. EmailAddress A

RIGHT JON AdventureWorks2017_NUEVA person, EmailAddress B ON B BusinessEntityID A BusinessEntityID

WHERE ISHULLA. Business EntityID,e

A
[29/01/2024 22:28] Henry: X CURSOSSERVER Adi non med

SELEL from person person

WHERE firstname

(CASE WHEN (

@nombre,

THEN

@nombr

ENO

ELSE FirstName

--BUSQUEDAS ENTRE BASES DE DATOS

INSERT INTO person. EmailAddress

SELECT from person. EmailAddress A

RIGHT JON AdventureWorks2017_NUEVA person, EmailAddress B ON B BusinessEntityID A BusinessEntityID

WHERE ISHULLA. Business EntityID,e



ndow Help

emailad

,

votsal (oks2017 (54)

SELECT from sales. Sales OrderDetail-salesorder ID, productID SELECT from production. Product-productID, productsubcategoryID

SELECT from production. ProductSubcategory-productsubcategoryID, productcategoryID

SELECT from production.productcategory-productcategoryID, name

WITH VentasPorCategoria AS (

SELECT DISTINCT DATEPART(year, SOH OrderDate) as anio, PC. [name] as categoria,

P.ProductID

FROM sales. SalesOrderHeader SOH

INNER JOIN sales. SalesOrderDetail SOD ON SOD SalesOrder ID SOH. Sales Order ID

INNER JOIN production product P ON P.ProductID SOD Product ID

INNER JOIN production. ProductSubcategory PSC ON PSC ProductSubcategoryID P.ProductSubcategoryI

INNER JOIN production ProductCategory PC ON PC ProductCategoryID PSC ProductCategoryID)

--Aplicamos PIVOT al resultado guardado en Ventas PorCategoria

SELECT from Ventas PorCategoria

PIVOT (COUNT (productID) FOR anio IN([2014], [2013]. [2011])) as pivotTable ORDER BY categoria,

A

Activa

Me a Confe
[29/01/2024 22:31] Henry: anagement Studio

Window

Help

pols

emailad

Query

pivot.sql $2017 (SA (54)

WITH Ventas PorCategoria AS (

SELECT DISTINCT DATEPART(year, SOH. OrderDate) as anio,

PC. [name] as categoria, P.ProductID

FROM sales. Sales OrderHeader SOH

INNER JOIN sales Sales OrderDetail SOD ON SOD. SalesOrderID SOH. SalesOrderID

INNER JOIN production.product P ON P.ProductID SOD. ProductID

INNER JOIN production. ProductSubcategory PSC ON PSC ProductSubcategory ID P.ProductSubc INNER JOIN production.ProductCategory PC ON PC. ProductCategoryID PSC Product CategoryID

--Aplicamos PIVOT al resultado guardado en VentasPorCategoria

SELECT

from VentasPorCategoria

PIVOT (COUNT (productID) FOR anio IN([2014], [2013], [2011])) as pivotTable UNPIVOT (productID FOR anio IN([2014], [2013], [2011])) as unpivotTable

RM SA 154 Ad

IN 17

10
[29/01/2024 22:36] Henry: gement Studie

--CONTAINS (para búsquedas más precisas)

SELECT FROM person.Address A

WHERE CONTAINS(A. AddressLinel, "first avenue")

--CONTAINS/AND/AND NOT/OR

SELECT from person. Address A

WHERE CONTAINS(A. AddressLinel, "avenue du" AND port')

--CONTAINS NEAR

SELECT from person. Address A

WHERE CONTAINS(A. Address Linel, "5415 san" NEAR dr')

SELECT from person. Address A

WHERE CONTAINS(A. Address Linel, NEAR((21, centrale), 6)')

SELECT from person. Address A-order by len (AddressLinel) desc WHERE CONTAINS (A. Address Linel, NEAR ((Hilton, factory, 25), 5))

Megory

10

DBCC CLONEDATABASE (AdventureWorks2022, AdventureCopia2)

-- Conéctate a la base de datos
USE TuBaseDeDatos;

-- Crear un rol personalizado
CREATE ROLE AdventureWorks;

-- Otorgar permisos al rol para clonar bases de datos
GRANT CREATE DATABASE TO AdventureWorks;

-- Agregar usuario al rol personalizado
EXEC sp_addrolemember 'AdventureWorks2022', 'AdventureWorks'
