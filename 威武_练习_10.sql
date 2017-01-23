 --日期函数
  DAY
 
select GETDATE()

select datedepart(,GETDATE())
select  DATEADD DATEDIFF 
select DATENAME(,)
select DATEPART(DAYOFYEAR,getdate()) 


SELECT DB_NAME()
SELECT DB_ID()
--日期和时间算术运算符  
/*若要对所有日期和时间数据类型进行加减运算，应使用 DATEADD 和 DATEDIFF。*/
select DATEADD(d,-9,GETDATE())
select DATEDIFF(YEAR,GETDATE()-1,getdate())
SELECT GETDATE()-1
SELECT GETDATE()

--用来验证日期和时间值的函数
SELECT ISDATE(GETDATE())  
SELECT ISDATE('2018-02-12')
SELECT ISDATE('8-02-12')    
--CAST 和 CONVERT (Transact-SQL) 
/*提供有关在日期和时间值与字符串文字及其他日期和时间格式之间进行相互转换的信息。*/
