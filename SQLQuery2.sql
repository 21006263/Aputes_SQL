SELECT TOP (10) [DepartmentID]
      ,[Name]
      ,[GroupName]
 
  FROM [AdventureWorks2022].[HumanResources].[Department]



  select top 5 a.LastName, a.MiddleName, a.BusinessEntityID, b.PasswordSalt, b.ModifiedDate, c.AddressID, c.AddressTypeID
  from Person.Person as a
  inner join Person.Password as b on a.BusinessEntityID =  b.BusinessEntityID
  inner join Person.BusinessEntityAddress as c on c.AddressID = a.BusinessEntityID
 

