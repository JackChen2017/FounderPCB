create table #TEMP_TBL
(
ID INT
)
--������ʱ���Ƿ����
--����1:
if exists(select * from tempdb..sysobjects where id=object_id('tempdb..#TEMP_TBL'))
PRINT '����' 
--select * from tempdb..sysobjects where id=object_id('tempdb..#TEMP_TBL')
ELSE 
PRINT'������'

--����2:

if exists (select * from tempdb.dbo.sysobjects where id = object_id(N'tempdb..#TEMP_TBL') and type='U')
PRINT '����' 
ELSE 
PRINT'������'

SELECT COUNT(*) FROM [tempdb].dbo.sysobjects

select * from tempdb..sysobjects