
/*
语法：IDENTITY [ (seed , increment) ]  
参数
种子
 加载到表中的第一个行所使用的值。
增量
 与前一个加载的行的标识值相加的增量值。
必须同时指定种子和增量，或者二者都不指定。 如果二者都未指定，则取默认值 (1,1)。
*/

IF OBJECT_ID ('dbo.new_employees', 'U') IS NOT NULL  
   DROP TABLE #new_employees;  
GO  
CREATE TABLE #new_employees  
(  
 id_num int IDENTITY(1,1),  
 fname varchar (20),  
 minit char(1),  
 lname varchar(30)  
);  
  
INSERT #new_employees  
   (fname, minit, lname)  
VALUES  
   ('Karin', 'F', 'Josephs');  
  
INSERT #new_employees  
   (fname, minit, lname)  
VALUES  
   ('Pirkko', 'O', 'Koskitalo');  
   
   select * from #new_employees