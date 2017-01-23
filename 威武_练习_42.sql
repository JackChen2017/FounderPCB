sp_who

sys.sp_who2

--select * from (sp_who)

select * into #t 
 from openrowset
 ('sqloledb','172.21.32.35';'reportadmin';'reportAdmin#',
 'set fmtonly off exec sp_who')
 
select * into #t 
 from openrowset
 ('sqloledb','172.21.32.35';'reportadmin';'reportAdmin#',
 'set fmtonly off; exec F5_TEST.[dbo].[TEST_JK]') 
 
 
 select * into #t 
 from openrowset
 ('sqloledb','172.21.32.35';'reportadmin';'reportAdmin#',
 'set fmtonly off; EXEC F5_TEST.dbo.FSK_PROC_PROD_ONLINE_2 "%","%","%","全部","%","%"')

--select * into #t1 
 from openrowset
 ('sqloledb','120.25.104.41';'sa';'sshc1968',
 'set fmtonly off; exec SP_WHO') A

--将带多个参数的存储过程结果集插入临时表  

  
select * into #temp    
from openquery([服务器名],'exec [数据库].[架构].[存储过程] 参数') 

exec sp_helpserver

exec sp_serveroption 'PCBERP01','data access', true;

exec sp_serveroption 'PCBERP01','data access', false;

select * into #temp1    
from openquery(PCBERP01,'EXEC KBLIVE.dbo.FSK_PROC_PROD_ONLINE_2 '','','%','%','%','%'') 


 exec FSK_PROC_PROD_ONLINE '%'
 
 select * into #temp1    
from openquery(PCBERP01,'EXEC KBLIVE.dbo.FSK_PROC_PROD_ONLINE '%'')
 
select * from #t

SELECT * FROM #temp 

drop table #t1




