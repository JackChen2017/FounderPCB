/*
SmallInt  ���� 2 ���ֽ�����ŵ������� ���ֵΪ 32,767�� ��СֵΪ -32,767�� 
*/

--select smallint

select datalength('retetrte') �ַ�������

select * from systypes where name like '%int%' order by name

select * from systypes where name like '%da%' order by name

select * from systypes where name like '%var%' order by name

select * from systypes where name like '%text%' order by name

select d1.length,name from systypes d1 where name like '%int%' order by length

select d1.length,name,* from systypes d1 where name like '%int%' order by d1.name
