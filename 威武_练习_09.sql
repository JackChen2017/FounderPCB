--����һ����#T
CREATE TABLE #T
(
	�Զ����� int primary key identity(1,1),
	���� varchar(20),
	ѭ������ int,
	���� datetime,
	��ע nvarchar(50)
)

alter table #T add ���������ֶ� varchar(10)

select * from #T

drop table #T
/* 
����һ����
һ������
һ���ֻ�H5��Ӧ��
*/
