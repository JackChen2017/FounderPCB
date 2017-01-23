--replace  (字符串,要替換,替換後的) 
/*
SQL中可以使用Replace函数来对某个字段里的某些字符进行替换操作，语法如下： 
语法 
REPLACE ( original-string, search-string, replace-string ) 
参数 
如果有某个参数为 NULL，此函数返回 NULL。 
original-string     被搜索的字符串。可为任意长度。 
search-string     要搜索并被 replace-string 替换的字符串。该字符串的长度不应超过 255 个字节。如果 search-string 是空字符串，则按原样返回原始字符串。 
replace-string     该字符串用于替换 search-string。可为任意长度。如果 replacement-string 是空字符串，则删除出现的所有 search-string。 
例子： 
UPDATE tableName SET recordName=REPLACE(recordName,'abc','ddd') 
将表tableName中的recordName字段中的 abc 替换为 ddd 
这个函数有一点不足是不支持 text,ntext类型字段的替换，可以通过下面的语句来实现： 
update tableName set recordName=replace(cast(recordName as varchar(8000)) ,'abc','ddd')


2、替换字段中的换行符，回车符

1： 回车符

SELECT *, REPLACE(detail, CHAR(13) , '<br>') AS 显示替换后的内容 FROM loginfo

2：换行符

SELECT *, REPLACE(detail, CHAR(10), '<br>') AS 显示替换后的内容 FROM loginfo

3：回车换行符

SELECT *, REPLACE(detail, CHAR(13) + CHAR(10), '<br>') AS 显示替换后的内容 FROM loginfo

4：将回车换行符替换成<BR><BR>

UPDATE loginfo 
SET detail = REPLACE(detail, CHAR(13) + CHAR(10), '<br><br>')

注 在 dos \win 系列会出现 回车+换行符 CHAR(13)+CHAR(10)

在 unix \ Linux 是换行符

转换只要把回车符char(13) 去掉就行了

以下sql语句

UPDATE loginfo SET detail = REPLACE(detail, CHAR(13) , '')

替换 正则 内容

update User_Content set [Address]=substring([Address],1,patindex('%<%',[Address])-2)
where patindex('%<%',[Address])>2
*/