--存储过程中可以对临时表进行删除，不需要手动选择drop语句即可在每次开始执行存储过程时删除
IF OBJECT_ID ('dbo.new_employees_1', 'U') IS NOT NULL  
   DROP TABLE #new_employees_1;  
GO  
SELECT * from new_employees

/*对临时表无效*/
IF OBJECT_ID ('#Table_1', 'U') IS NOT NULL  
   DROP TABLE #Table_1;  