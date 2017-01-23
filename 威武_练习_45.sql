/*
	CAR数据库 记录  2016年12月22日17:11:02
	连接数据库
	服务器名称：pcberprs
	用户名：reportAdmin
	密码：reportAdmin#
	数据库:f5_car
*/
select * from dbo.t_WorkingProcedure --工序
select * from dbo.t_User   --用户
select * from dbo.DATA0011 --用户备注
select * from dbo.t_JZ         --JZ  
/*
delete from t_JZ WHERE RKEY=80
select * from t_JZ where RKEY in (57,58,59,60,61,63,68)
--delete  from t_JZ where RKEY in (57,58,59,60,61,63,68)
--删除指定开立JZ单据
*/
select * from dbo.t_HSF	   --HSF
select * from dbo.t_8D	   --8D
select * from dbo.DATA0497 --3种流程设置

select * from dbo.t_LinkPath --连接
select * from dbo.t_BillType --类型
select * from dbo.T_APPENDAPPROVAL_TYPE  --未体现用处,无数据
			
select * from dbo.DATA0549  --权限设置
select * from dbo.DATA0548
select * from dbo.DATA0547
select * from dbo.DATA0546
select * from dbo.DATA0499
select * from dbo.DATA0498_EXTENT
select * from dbo.DATA0498

--单据类型
select * from dbo.t_BillType
--工序设置
select * from dbo.t_WorkingProcedure
--审批步骤设置
select * from dbo.DATA0497
--用户
select * from dbo.t_User
--用户备注
select * from dbo.DATA0011
--JZ单
select * from dbo.t_JZ
select * from dbo.t_8D
select * from dbo.t_HSF
--上传路径
select * from dbo.t_LinkPath
--http://oa.founderpcb.com:8010/kb/CAR/UpFiles/JZ_20161018_025290.xls
--权限设置  感兴趣
select * from dbo.DATA0549
select * from dbo.DATA0548
select * from dbo.DATA0547
select * from dbo.DATA0546
select * from dbo.DATA0499
select * from dbo.DATA0498_EXTENT
select * from dbo.DATA0498