--设置多个字段为主键
--alter table 表名 add constraint 键名 primary key (student_Id,course_No) 
CREATE TABLE #T1
(
--(student text,id int)  primary key --一组为主键
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