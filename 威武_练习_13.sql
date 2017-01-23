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

--同时使用 CAST 和 CONVERT

-- Use CAST  
SELECT SUBSTRING(Name, 1, 30) AS ProductName, ListPrice  
FROM Production.Product  
WHERE CAST(ListPrice AS int) LIKE '3%';  
GO  
  
-- Use CONVERT.  
SELECT SUBSTRING(Name, 1, 30) AS ProductName, ListPrice  
FROM Production.Product  
WHERE CONVERT(int, ListPrice) LIKE '3%';  
GO  

--B. 将 CAST 与算术运算符结合使用

SELECT CAST(ROUND(SalesYTD/CommissionPCT, 0) AS int) AS Computed  
FROM Sales.SalesPerson   
WHERE CommissionPCT != 0;  
GO  
/*
C. 使用 CAST 进行连接
以下示例使用 CAST 连接非字符型非二进制表达式。
*/
SELECT 'The list price is ' + CAST(ListPrice AS varchar(12)) AS ListPrice  
FROM Production.Product  
WHERE ListPrice BETWEEN 350.00 AND 400.00;  
GO 

/*
D. 使用 CAST 生成可读性更高的文本
以下示例使用选择列表中的 CAST 将 Name 列转换为 char(10) 列。
*/

SELECT DISTINCT CAST(p.Name AS char(10)) AS Name, s.UnitPrice  
FROM Sales.SalesOrderDetail AS s   
JOIN Production.Product AS p   
    ON s.ProductID = p.ProductID  
WHERE Name LIKE 'Long-Sleeve Logo Jersey, M';  
GO 

SELECT DISTINCT Name, s.UnitPrice  
FROM Sales.SalesOrderDetail AS s   
JOIN Production.Product AS p   
    ON s.ProductID = p.ProductID  
WHERE Name LIKE 'Long-Sleeve Logo Jersey, M';  
GO 

/*
E. 将 CAST 与 LIKE 子句一起作用
以下示例将 money 列 SalesYTD 转换为 int 列，然后再转换为 char(20) 列，以便在 LIKE 子句中使用该列。
*/
SELECT p.FirstName, p.LastName, s.SalesYTD, s.BusinessEntityID  
FROM Person.Person AS p   
JOIN Sales.SalesPerson AS s   
    ON p.BusinessEntityID = s.BusinessEntityID  
WHERE CAST(CAST(s.SalesYTD AS int) AS char(20)) LIKE '2%';  
GO  

/*
G. 对 datetime 数据使用 CAST 和 CONVERT
以下示例显示当前日期和时间，使用 CAST 将当前日期和时间更改为字符数据类型，
然后使用 CONVERT 以 ISO 8901 格式显示日期和时间。
*/
SELECT   
   GETDATE() AS UnconvertedDateTime,  
   CAST(GETDATE() AS nvarchar(30)) AS UsingCast,  
   CONVERT(nvarchar(30), GETDATE(), 126) AS UsingConvertTo_ISO8601  ;  
GO  

/*
以下示例与上述示例几乎完全相反。 该示例将日期和时间显示为字符数据，使用 CAST 将字符数据更改为 datetime 数据类型，然后使用 CONVERT 将字符数据更改为 datetime 数据类型。
*/

SELECT   
   '2006-04-25T15:50:59.997' AS UnconvertedText,  
   CAST('2006-04-25T15:50:59.997' AS datetime) AS UsingCast,  
   CONVERT(datetime, '2006-04-25T15:50:59.997', 126) AS UsingConvertFrom_ISO8601 ;  
GO 

/*
H. 使用 CONVERT 处理二进制和字符数据
以下示例使用不同样式显示转换二进制和字符数据的结果。
*/

--Convert the binary value 0x4E616d65 to a character value.  
SELECT CONVERT(char(8), 0x4E616d65, 0) AS [Style 0, binary to character];  

--The following example shows that Style 2 does not truncate the  
--result because the characters 0x are not included in  the result.  
SELECT CONVERT(char(8), 0x4E616d65, 2) AS [Style 2, binary to character];  

--Convert the character value 'Name' to a binary value.  
SELECT CONVERT(binary(8), 'JackChen', 0) AS [Style 0, character to binary];

SELECT CONVERT(binary(4), '0x4E616D65', 1) AS [Style 1, character to binary];  

/*
I. 转换日期和时间数据类型
以下示例演示了日期、时间及 datetime 数据类型的转换。
*/

DECLARE @d1 date, @t1 time, @dt1 datetime;  
SET @d1 = GETDATE();   
SET @t1 = GETDATE();  
SET @dt1 = GETDATE();  
select @d1 date格式,@t1 time格式,@dt1 datetim格式
-- When converting date to datetime the minutes portion becomes zero.  
SELECT @d1 AS [date], CAST (@d1 AS datetime) AS [date as datetime];  
-- When converting time to datetime the date portion becomes zero   
-- which converts to January 1, 1900.  
SELECT @t1 AS [time], CAST (@t1 AS datetime) AS [time as datetime];  
-- When converting datetime to date or time non-applicable portion is dropped.  
SELECT @dt1 AS [datetime], CAST (@dt1 AS date) AS [datetime as date], CAST (@dt1 AS time) AS [datetime as time]; 