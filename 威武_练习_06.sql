--���ö���ֶ�Ϊ����
--alter table ���� add constraint ���� primary key (student_Id,course_No) 
CREATE TABLE #T1
(
--(student text,id int)  primary key --һ��Ϊ����
primary key(student,id),
student varchar(10),
id int
)

CREATE TABLE #T2
(
st text,
id int
)

DELETE * from #T1
DELETE * from #T2
DELETE FROM #T1
DELETE FROM #T2