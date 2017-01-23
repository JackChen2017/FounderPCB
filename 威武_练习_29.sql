--循环得出 数据库中所有的 DB_ID,DB_NAME
CREATE TABLE #T
(
  "DB_NAME()" int,
  "DB_ID" int,
  "DB_NAME" nvarchar(100) 
)

declare @n int=0
while(DB_NAME(@n)!='NULL')
BEGIN
insert  #T values(@n,DB_ID(DB_NAME(@n)),DB_NAME(@n))
set @n=@n+1
END

SELECT * FROM #T

DROP TABLE #T


--遍历 数据库中所有 DB_ID DB_NAME
declare @a int=0
while(DB_NAME(@n)!='NULL')
BEGIN
select @a as 'DB_NAME()',DB_NAME(@a) AS 'DBNAME()'
SET @a=@a+1
END

 
--判断是否为空
declare @a int=0
if(DB_NAME(6)!='NULL')
print CAST(1 AS NVARCHAR)+CHAR(9)+DB_NAME(6)
else
print 2

declare @a int=0
if(DB_NAME(6)!='NULL')
begin
print CAST(1 AS NVARCHAR)+'制表符'+CHAR(9)+DB_NAME(6)
print CAST(1 AS NVARCHAR)+'换行'+CHAR(10)+DB_NAME(6)
print CAST(1 AS NVARCHAR)+'回车'+CHAR(13)+DB_NAME(6)
end
else
print 2

