use AdventureWorks2008R2
select AddressLine1 from Person.Address  where AddressID=1
union
select REVERSE(AddressLine1) from Person.Address  where AddressID=1