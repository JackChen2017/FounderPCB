--����һ����#T
CREATE TABLE #T
(
	�Զ����� int primary key identity(1,1),  
	���� varchar(20) null,
	ѭ������ int null,
	���� datetime null,
	��ע nvarchar(50) null
)

insert into  #T( ����,��ע) 
select t1.BirthDate,t1.LoginID  from HumanResources.Employee t1

select * into #table from 
(select * from HumanResources.Department) as a  

select * from #T
select * from #table
drop table #T
drop table #table

/*
����һ����
һ������
һ���ֻ�H5��Ӧ��
*/

--select into �ǹ���һ����
--select * from dbo.Table_1 a �ǲ�ѯ����ڱ�a�� 