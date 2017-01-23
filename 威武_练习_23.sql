declare @sql varchar(500)
      set @sql= 'print ''SDFSAFDSFÒ»°ã×Ö·û'''
      exec (@sql)
      set @sql= 'print ''SDFADSFASFSDÒ»°ã"×Ö·û"'''
      exec (@sql)
      set @sql= 'print ''FSDFASDFAÒ»°ã''''×Ö·û'''''''
      exec (@sql) 
      
      SELECT 'print ''SDFSAFDSFÒ»°ã×Ö·û'''
      SELECT 'Ò»°ã'