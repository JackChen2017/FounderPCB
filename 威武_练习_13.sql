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

--ͬʱʹ�� CAST �� CONVERT

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

--B. �� CAST ��������������ʹ��

SELECT CAST(ROUND(SalesYTD/CommissionPCT, 0) AS int) AS Computed  
FROM Sales.SalesPerson   
WHERE CommissionPCT != 0;  
GO  
/*
C. ʹ�� CAST ��������
����ʾ��ʹ�� CAST ���ӷ��ַ��ͷǶ����Ʊ��ʽ��
*/
SELECT 'The list price is ' + CAST(ListPrice AS varchar(12)) AS ListPrice  
FROM Production.Product  
WHERE ListPrice BETWEEN 350.00 AND 400.00;  
GO 

/*
D. ʹ�� CAST ���ɿɶ��Ը��ߵ��ı�
����ʾ��ʹ��ѡ���б��е� CAST �� Name ��ת��Ϊ char(10) �С�
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
E. �� CAST �� LIKE �Ӿ�һ������
����ʾ���� money �� SalesYTD ת��Ϊ int �У�Ȼ����ת��Ϊ char(20) �У��Ա��� LIKE �Ӿ���ʹ�ø��С�
*/
SELECT p.FirstName, p.LastName, s.SalesYTD, s.BusinessEntityID  
FROM Person.Person AS p   
JOIN Sales.SalesPerson AS s   
    ON p.BusinessEntityID = s.BusinessEntityID  
WHERE CAST(CAST(s.SalesYTD AS int) AS char(20)) LIKE '2%';  
GO  

/*
G. �� datetime ����ʹ�� CAST �� CONVERT
����ʾ����ʾ��ǰ���ں�ʱ�䣬ʹ�� CAST ����ǰ���ں�ʱ�����Ϊ�ַ��������ͣ�
Ȼ��ʹ�� CONVERT �� ISO 8901 ��ʽ��ʾ���ں�ʱ�䡣
*/
SELECT   
   GETDATE() AS UnconvertedDateTime,  
   CAST(GETDATE() AS nvarchar(30)) AS UsingCast,  
   CONVERT(nvarchar(30), GETDATE(), 126) AS UsingConvertTo_ISO8601  ;  
GO  

/*
����ʾ��������ʾ��������ȫ�෴�� ��ʾ�������ں�ʱ����ʾΪ�ַ����ݣ�ʹ�� CAST ���ַ����ݸ���Ϊ datetime �������ͣ�Ȼ��ʹ�� CONVERT ���ַ����ݸ���Ϊ datetime �������͡�
*/

SELECT   
   '2006-04-25T15:50:59.997' AS UnconvertedText,  
   CAST('2006-04-25T15:50:59.997' AS datetime) AS UsingCast,  
   CONVERT(datetime, '2006-04-25T15:50:59.997', 126) AS UsingConvertFrom_ISO8601 ;  
GO 

/*
H. ʹ�� CONVERT ��������ƺ��ַ�����
����ʾ��ʹ�ò�ͬ��ʽ��ʾת�������ƺ��ַ����ݵĽ����
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
I. ת�����ں�ʱ����������
����ʾ����ʾ�����ڡ�ʱ�估 datetime �������͵�ת����
*/

DECLARE @d1 date, @t1 time, @dt1 datetime;  
SET @d1 = GETDATE();   
SET @t1 = GETDATE();  
SET @dt1 = GETDATE();  
select @d1 date��ʽ,@t1 time��ʽ,@dt1 datetim��ʽ
-- When converting date to datetime the minutes portion becomes zero.  
SELECT @d1 AS [date], CAST (@d1 AS datetime) AS [date as datetime];  
-- When converting time to datetime the date portion becomes zero   
-- which converts to January 1, 1900.  
SELECT @t1 AS [time], CAST (@t1 AS datetime) AS [time as datetime];  
-- When converting datetime to date or time non-applicable portion is dropped.  
SELECT @dt1 AS [datetime], CAST (@dt1 AS date) AS [datetime as date], CAST (@dt1 AS time) AS [datetime as time]; 