 --���ں���
  DAY
 
select GETDATE()

select datedepart(,GETDATE())
select  DATEADD DATEDIFF 
select DATENAME(,)
select DATEPART(DAYOFYEAR,getdate()) 


SELECT DB_NAME()
SELECT DB_ID()
--���ں�ʱ�����������  
/*��Ҫ���������ں�ʱ���������ͽ��мӼ����㣬Ӧʹ�� DATEADD �� DATEDIFF��*/
select DATEADD(d,-9,GETDATE())
select DATEDIFF(YEAR,GETDATE()-1,getdate())
SELECT GETDATE()-1
SELECT GETDATE()

--������֤���ں�ʱ��ֵ�ĺ���
SELECT ISDATE(GETDATE())  
SELECT ISDATE('2018-02-12')
SELECT ISDATE('8-02-12')    
--CAST �� CONVERT (Transact-SQL) 
/*�ṩ�й������ں�ʱ��ֵ���ַ������ּ��������ں�ʱ���ʽ֮������໥ת������Ϣ��*/
