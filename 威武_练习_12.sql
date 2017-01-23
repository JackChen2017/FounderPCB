--ISDATE()
/*
https://msdn.microsoft.com/zh-cn/library/ms187347(v=sql.105)
*/
IF ISDATE('2009-05-12 10:19:41.177') = 1
    PRINT 'VALID'
ELSE
    PRINT 'INVALID'
    
  
