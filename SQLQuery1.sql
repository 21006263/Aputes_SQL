
select * from Person.Person P
inner join Person.EmailAddress E
on E.BusinessEntityID = P.BusinessEntityID
select * from Person.Person P
left join Person.EmailAddress E
on E.BusinessEntityID = P.BusinessEntityID
WHERE ISNULL (E.BusinessEntityID, '') = ''
