/*Update 语句

Update 语句用于修改表中的数据

UPDATE 表名称 SET 列名称 = 新值 WHERE 列名称 = 某值

UPDATE 表别名 SET 列名称 = 新值 FROM 表名称 表别名  WHERE 列名称 = 某值*/

USE AdventureWorks2008R2
SELECT * FROM Person.Address

SELECT * FROM Person.Address where AddressID=527
UPDATE Person.Address SET AddressLine2='test1'  where AddressID=527
--UPDATE别名错误写法
UPDATE Person.Address AS T1 SET T1.AddressLine2='test1'  where AddressID=527
--UPDATE别名正确写法
update t  set AddressLine2 ='test2' from Person.Address t where AddressID = 527

/*--常规写法
UPDATE Person SET FirstName = 'Fred' WHERE LastName = 'Wilson' 
UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing'
WHERE LastName = 'Wilson'
*/