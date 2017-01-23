use F5_TEST1
--数据库字符集： Chinese_PRC_CI_AS
/*
数据库字符集： 
use AdventureWorks2008R2
SQL_Latin1_General_CP1_CI_AS 
 
*/
declare @a int=0
if(DB_NAME(6)!='NULL')
begin
print CAST(1 AS NVARCHAR)+'制表符'+CHAR(9)+DB_NAME(6)
print CAST(1 AS NVARCHAR)+'换行'+CHAR(10)+DB_NAME(6)
print CAST(1 AS NVARCHAR)+'回车'+CHAR(13)+DB_NAME(6)
end
else
print 2

CREATE Table #T_Char
 (
	auto_id int identity(1,1),
	varable int,
	"values" varchar(10)
 )
 
 DECLARE @I INT=0
 while(CHAR(@I)!='NULL')
 begin
 INSERT INTO #T_Char (varable,"values") SELECT @I,CHAR(@I)
 SET @I=@I+1
 end
 
 SELECT * FROM #T_Char
 
 drop table #T_Char

 select char(9),char(10),char(13)

SELECT * FROM SYSOBJECTS

select * from syscolumns

select * from systypes
