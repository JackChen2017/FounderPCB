--AdventureWorks2008R2
--表

USE AdventureWorks2008R2

select * from dbo.AWBuildVersion

select * from dbo.DatabaseLog

select * from HumanResources.Employee

select * from Person.Address

select * from Sales.Currency

select top 100 * from Sales.SpecialOfferProduct

--AdventureWorks2008R2
--视图

sp_helptext 'Production.vProductModelCatalogDescription'

sp_helptext 'Sales.vIndividualCustomer'

sp_helptext 'Sales.vStoreWithContacts'

sp_helptext 'Sales.vStoreWithContacts'

--AdventureWorks2008R2
--存储过程
--proc
sp_helptext 'dbo.uspGetBillOfMaterials'
sp_helptext 'dbo.uspGetWhereUsedProductID'
sp_helptext 'dbo.uspSearchCandidateResumes'



