/*
SmallInt  是在 2 个字节来存放的整数。 最大值为 32,767。 最小值为 -32,767。 
*/

--select smallint

select datalength('retetrte') 字符串长度

select * from systypes where name like '%int%' order by name

select * from systypes where name like '%da%' order by name

select * from systypes where name like '%var%' order by name

select * from systypes where name like '%text%' order by name

select d1.length,name from systypes d1 where name like '%int%' order by length

select d1.length,name,* from systypes d1 where name like '%int%' order by d1.name
