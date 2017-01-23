 --CASE���ʽ
--SQL Server �������� CASE ���ʽ��Ƕ�� 10 ������
--CASE ���ʽ�������ڿ��� Transact-SQL ��䡢���顢�û����庯���Լ��洢���̵�ִ������ �������������б�
USE AdventureWorks2008R2
SELECT   ProductNumber, Category =  
      CASE ProductLine  
         WHEN 'R' THEN 'Road'  
         WHEN 'M' THEN 'Mountain'  
         WHEN 'T' THEN 'Touring'  
         WHEN 'S' THEN 'Other sale items'  
         ELSE 'Not for sale'  
      END,  
   Name  
FROM Production.Product  
ORDER BY ProductNumber;  
GO  

SELECT ProductLine,* FROM  Production.Product  
ORDER BY ProductNumber;  
