--建立一个表#T
CREATE TABLE #T
(
	自动新增 int primary key identity(1,1),
	表名 varchar(20),
	循环次数 int,
	生日 datetime,
	备注 nvarchar(50)
)

alter table #T add 新增加列字段 varchar(10)

select * from #T

drop table #T
/* 
建立一个表
一个窗体
一个手机H5表单应用
*/
