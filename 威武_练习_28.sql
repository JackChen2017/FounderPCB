select COL_LENGTH('Person.ContactType','name')
SELECT * FROM 

/*系统函数*/
--COL_LENGTH(table,column) select COL_LENGTH(Person.ContactType,name)
select COL_LENGTH('Person.ContactType','name') 

--COL_NAME(table_id,column_id)
select COL_NAME(OBJECT_ID('Person.ContactType'),1)
select COL_NAME(OBJECT_ID('Person.ContactType'),2)
select COL_NAME(OBJECT_ID('Person.ContactType'),3)
select COL_NAME(OBJECT_ID('Person.ContactType'),4)
select COL_NAME(OBJECT_ID('Person.ContactType'),5)
select COL_NAME(OBJECT_ID('Person.ContactType'),6)
select COL_NAME(OBJECT_ID('Person.ContactType'),7)

--DATALENGTH(expression)函数:返回数据表达式的数据的实际长度函数
select DATALENGTH(name) from Person.ContactType

--DB_ID(database_name) 返回数据库的编号
select DB_ID('master') 数据库的编号
select DB_ID('tempdb') 数据库的编号
select DB_ID('model')  数据库的编号
select DB_ID('msdb')   数据库的编号
select DB_ID('AdventureWorks2008R2') 数据库的编号

--DB_NAME(database_id) 返回数据库的名称

SELECT DB_NAME(0)   系统默认数据库
SELECT DB_NAME(1)
SELECT DB_NAME(2)
SELECT DB_NAME(3)
SELECT DB_NAME(4)
SELECT DB_NAME(5)
SELECT DB_NAME(6)
SELECT DB_NAME(7)
SELECT DB_NAME(8)
SELECT DB_NAME(9)
SELECT DB_NAME(10)
SELECT DB_NAME(11)
SELECT DB_NAME(12)


SELECT USER_NAME()

--返回数据库当前默认的null值

select * from sysobjects where xtype='U' ORDER BY crdate desc

select * from sysobjects where xtype='S' ORDER BY crdate DESC

select * from sysobjects where xtype='V' ORDER BY crdate DESC

select * into #Table_1 from  exec('select distinct xtype from sysobjects ') as a
select * from #Talbe_1
SELECT [name],[1],[2],[3]  
FROM #Table_1  
pivot  
(  
  sum(score) for subject_id in ([1],[2],[3])  
) as pvt  


select * from sysobjects where xtype='SP' ORDER BY crdate DESC
