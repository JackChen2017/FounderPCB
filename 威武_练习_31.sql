 --CASE表达式
--SQL Server 仅允许在 CASE 表达式中嵌套 10 个级别
--CASE 表达式不能用于控制 Transact-SQL 语句、语句块、用户定义函数以及存储过程的执行流。 控制流方法的列表
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
