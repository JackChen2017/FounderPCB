--建立一个表#T
CREATE TABLE #T
(
	自动新增 int primary key identity(1,1),  
	表名 varchar(20) null,
	循环次数 int null,
	生日 datetime null,
	备注 nvarchar(50) null
)

insert into  #T( 生日,备注) 
select t1.BirthDate,t1.LoginID  from HumanResources.Employee t1

select * into #table from 
(select * from HumanResources.Department) as a  

select * from #T
select * from #table
drop table #T
drop table #table

/*
建立一个表
一个窗体
一个手机H5表单应用
*/

--select into 是构建一个表
--select * from dbo.Table_1 a 是查询结果在表a中 