--可以通过select * into new table from ［存储过程］ 参数1,参数2......
--1. 已知表结构
create table #T
(
  AUTO_ID identity(1,1),
  
)
insert into #T exec uspGetBillOfMaterials '400','2014-4-18' ;

--2.未知表结构
select * into #T2  exec dbo.uspGetBillOfMaterials '400','2014-4-18'
select * from #T2

/*

*/
sp_helptext uspGetBillOfMaterials
--2. 未知表结构, 只能用openrowset
Select * into #T from 
  OPENROWSET('SQLOLEDB','Data Source=120.25.104.41;uid=sa;pwd=sshc1968;
database=AdventureWorks2008R2','exec dbo.uspGetBillOfMaterials')

CREATE PROCEDURE Proc1
@a varchar(50)
AS
SELECT Id, NAME FROM Table1 WHERE NAME=@a
GO

CREATE TABLE #t1
(
id int,
NAME varchar(50)
)
go
INSERT INTO #t1 EXEC Proc1 'name1'
