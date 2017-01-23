USE AdventureWorks2008R2;  
GO  
--CAST

SELECT 'CAST' "CAST",
CAST('1990-11-1' AS VARCHAR(10)) 转为字符串,
CAST('1990-11-1' AS DATETIME) 转为日期

--CONVERT
SELECT 'CONVERT' "CONVERT",
CONVERT(VARCHAR(10),'2999') 转为字符串,
CONVERT(INT,'2999') 转为整数

--''

select 'sb' 
select '''SB'''
SELECT '"SB"' --列名
SELECT  'it''s a pen'