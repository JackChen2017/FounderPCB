--ϵͳ���� 
create database sample_db;
use sample_db;
create table student (
    i_sid int  primary key  identity(1,1),
    str_stuName varchar(10)    
);
--1.���ر���ָ���ֶεĳ���
SELECT COL_LENGTH('student','str_stuName');
--2.���ر���ָ���ֶε�����
SELECT COL_NAME(OBJECT_ID('student'),1);
--3.�������ݱ��ʽ�����ݵ�ʵ�ʳ��Ⱥ���
insert into student values('Jamse');
select * from student
SELECT DATALENGTH(str_stuName)FROM student where i_sid=1;
--4.�������ݿ�ı��
SELECT DB_ID('master') ,DB_ID('sample_db');
--5.�������ݿ������
use master
SELECT DB_NAME(),DB_NAME(DB_ID('sample_db'));
--6.�������ݿ⵱ǰĬ�ϵ�nullֵ
SELECT GETANSINULL('master');
--7.���ط������˼�����ı�ʶ��
SELECT HOST_ID()
--8.���ط������˼��������
SELECT HOST_NAME();
--9.�������ݿ����ı��
SELECT OBJECT_ID('sample_db.dbo.student');
--10.�����û���SID(��ȫ��ʶ��)
SELECT SUSER_SID('sa'),SUSER_SID();
--11.�����û��ĵ�¼��
SELECT SUSER_SNAME(0x01),SUSER_SNAME();
--12.�������ݿ���������
SELECT OBJECT_NAME(2105058535,DB_ID('sample_db')), OBJECT_ID('sample_db.dbo.student');
--13.�������ݿ��û��ı�ʶ��
USE sample_db;
SELECT USER_ID();
--14.�������ݿ��û���
USE sample_db;
SELECT USER_NAME();