CREATE TABLE #T
(
	自动新增 int identity(1, 1),
	数据库表 varchar(20),
	循环次数 int
)

declare @m int,@n int=1
declare  @a1 varchar(10),@a2 varchar(10),@a3 varchar(10),@a4 varchar(10)
set @m=26
while(0<@m and @m<10)
BEGIN
if(object_id('DATA000'+CONVERT(VARCHAR(20),@m),N'U') is not null )
BEGIN
set @a1 = convert(varchar(10),@m)
exec('select top 1 '+'''DATA000'+@a1+''' as 表名'+',* from DATA000'+@a1)  
INSERT  INTO #T   
select  'DATA000'+CONVERT(VARCHAR(20),@a1) as 数据库表, @n as 循环次数
END
set @m=@m+1
set @n=@n+1
END

while(10<=@m and @m<100)
begin
if(object_id('DATA00'+CONVERT(VARCHAR(20),@m),N'U') is not null )
BEGIN
SET @a2 =convert(varchar(10),@m)
exec('select top 1 '+'''DATA00'+@a2+''' as 表名'+',* from DATA00'+@a2)  
END
INSERT  INTO #T   
select  'DATA00'+CONVERT(VARCHAR(20),@a2) as 数据库表, @n as 循环次数
set @m=@m+1
set @n=@n+1
END

while(100<=@m and @m<1000)
begin
if(object_id('DATA0'+CONVERT(VARCHAR(20),@m),N'U') is not null )
BEGIN
SET @a3 =convert(varchar(10),@m)
exec('select top 1 '+'''DATA0'+@a3+''' as 表名'+',* from DATA0'+@a3)  
INSERT  INTO #T   
select  'DATA0'+CONVERT(VARCHAR(20),@a3) as 数据库表, @n as 循环次数
END
set @m=@m+1
set @n=@n+1
END

while(1000<=@m and @m<10000)
begin
if(object_id('DATA'+CONVERT(VARCHAR(20),@m),N'U') is not null )
BEGIN
SET @a4 =convert(varchar(10),@m)
exec('select top 1 '+'''DATA'+@a4+''' as 表名'+',* from DATA'+@a4)
INSERT  INTO #T   
select  'DATA'+CONVERT(VARCHAR(20),@a4) as 数据库表, @n as 循环次数  
END
set @m=@m+1
set @n=@n+1
END

SELECT * FROM #T
DROP TABLE #T


SELECT object_id('DATA0027','U')



IF 
0<@m<10
10<=@m<100
100<=@m<1000
1000<=@m<10000
