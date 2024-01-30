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
-- clone database--
DBCC CLONEDATABASE(AdventureWorks2022, AdventureWorks2022Nueva)


GO
CREATE TABLE sales.SpecialOfferReseller(
	SpecialOfferID int not null,
	[Description] nvarchar(255) not null, 
	DiscountPct smallmoney not null
)
GO
CREATE TABLE sales.SpecialOfferCustomer(
	SpecialOfferID int not null,
	[Description] nvarchar(255) not null, 
	DiscountPct smallmoney not null
)
INSERT INTO sales.SpecialOfferReseller
SELECT SpecialOfferID, [Description], DiscountPct FROM sales.SpecialOffer WHERE Category='Reseller'
GO
INSERT INTO sales.SpecialOfferCustomer
SELECT SpecialOfferID, [Description], DiscountPct FROM sales.SpecialOffer WHERE Category='Customer'