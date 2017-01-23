--循环得出字符 char(n)

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
 
 --制表，换行，回车
 select char(9),char(10),char(13)