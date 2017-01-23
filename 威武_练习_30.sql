--系统函数 
create database sample_db;
use sample_db;
create table student (
    i_sid int  primary key  identity(1,1),
    str_stuName varchar(10)    
);
--1.返回表中指定字段的长度
SELECT COL_LENGTH('student','str_stuName');
--2.返回表中指定字段的名称
SELECT COL_NAME(OBJECT_ID('student'),1);
--3.返回数据表达式的数据的实际长度函数
insert into student values('Jamse');
select * from student
SELECT DATALENGTH(str_stuName)FROM student where i_sid=1;
--4.返回数据库的编号
SELECT DB_ID('master') ,DB_ID('sample_db');
--5.返回数据库的名称
use master
SELECT DB_NAME(),DB_NAME(DB_ID('sample_db'));
--6.返回数据库当前默认的null值
SELECT GETANSINULL('master');
--7.返回服务器端计算机的标识号
SELECT HOST_ID()
--8.返回服务器端计算机名称
SELECT HOST_NAME();
--9.返回数据库对象的编号
SELECT OBJECT_ID('sample_db.dbo.student');
--10.返回用户的SID(安全标识号)
SELECT SUSER_SID('sa'),SUSER_SID();
--11.返回用户的登录名
SELECT SUSER_SNAME(0x01),SUSER_SNAME();
--12.返回数据库对象的名称
SELECT OBJECT_NAME(2105058535,DB_ID('sample_db')), OBJECT_ID('sample_db.dbo.student');
--13.返回数据库用户的标识号
USE sample_db;
SELECT USER_ID();
--14.返回数据库用户名
USE sample_db;
SELECT USER_NAME();