USE AdventureWorks2008R2;  
GO  
--CAST

SELECT 'CAST' "CAST",
CAST('1990-11-1' AS VARCHAR(10)) תΪ�ַ���,
CAST('1990-11-1' AS DATETIME) תΪ����

--CONVERT
SELECT 'CONVERT' "CONVERT",
CONVERT(VARCHAR(10),'2999') תΪ�ַ���,
CONVERT(INT,'2999') תΪ����

--''

select 'sb' 
select '''SB'''
SELECT '"SB"' --����
SELECT  'it''s a pen'