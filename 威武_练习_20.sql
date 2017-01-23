if object_id('#Tmp','U') is not null
drop table #Tmp
ELSE 
PRINT 'SF'
GO

select  identity(int,1,1) as autoID,Name  into #Tmp from HumanResources.Department

select * from #Tmp

--drop table #Tmp

select * from HumanResources.Department

