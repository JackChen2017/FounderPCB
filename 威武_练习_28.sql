select COL_LENGTH('Person.ContactType','name')
SELECT * FROM 

/*ϵͳ����*/
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

--DATALENGTH(expression)����:�������ݱ��ʽ�����ݵ�ʵ�ʳ��Ⱥ���
select DATALENGTH(name) from Person.ContactType

--DB_ID(database_name) �������ݿ�ı��
select DB_ID('master') ���ݿ�ı��
select DB_ID('tempdb') ���ݿ�ı��
select DB_ID('model')  ���ݿ�ı��
select DB_ID('msdb')   ���ݿ�ı��
select DB_ID('AdventureWorks2008R2') ���ݿ�ı��

--DB_NAME(database_id) �������ݿ������

SELECT DB_NAME(0)   ϵͳĬ�����ݿ�
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

--�������ݿ⵱ǰĬ�ϵ�nullֵ

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
