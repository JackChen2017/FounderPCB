create table #TEMP_TBL
(
ID INT
)
--检验临时表是否存在
--方法1:
if exists(select * from tempdb..sysobjects where id=object_id('tempdb..#TEMP_TBL'))
PRINT '存在' 
--select * from tempdb..sysobjects where id=object_id('tempdb..#TEMP_TBL')
ELSE 
PRINT'不存在'

--方法2:

if exists (select * from tempdb.dbo.sysobjects where id = object_id(N'tempdb..#TEMP_TBL') and type='U')
PRINT '存在' 
ELSE 
PRINT'不存在'

SELECT COUNT(*) FROM [tempdb].dbo.sysobjects

select * from tempdb..sysobjects