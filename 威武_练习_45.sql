/*
	CAR���ݿ� ��¼  2016��12��22��17:11:02
	�������ݿ�
	���������ƣ�pcberprs
	�û�����reportAdmin
	���룺reportAdmin#
	���ݿ�:f5_car
*/
select * from dbo.t_WorkingProcedure --����
select * from dbo.t_User   --�û�
select * from dbo.DATA0011 --�û���ע
select * from dbo.t_JZ         --JZ  
/*
delete from t_JZ WHERE RKEY=80
select * from t_JZ where RKEY in (57,58,59,60,61,63,68)
--delete  from t_JZ where RKEY in (57,58,59,60,61,63,68)
--ɾ��ָ������JZ����
*/
select * from dbo.t_HSF	   --HSF
select * from dbo.t_8D	   --8D
select * from dbo.DATA0497 --3����������

select * from dbo.t_LinkPath --����
select * from dbo.t_BillType --����
select * from dbo.T_APPENDAPPROVAL_TYPE  --δ�����ô�,������
			
select * from dbo.DATA0549  --Ȩ������
select * from dbo.DATA0548
select * from dbo.DATA0547
select * from dbo.DATA0546
select * from dbo.DATA0499
select * from dbo.DATA0498_EXTENT
select * from dbo.DATA0498

--��������
select * from dbo.t_BillType
--��������
select * from dbo.t_WorkingProcedure
--������������
select * from dbo.DATA0497
--�û�
select * from dbo.t_User
--�û���ע
select * from dbo.DATA0011
--JZ��
select * from dbo.t_JZ
select * from dbo.t_8D
select * from dbo.t_HSF
--�ϴ�·��
select * from dbo.t_LinkPath
--http://oa.founderpcb.com:8010/kb/CAR/UpFiles/JZ_20161018_025290.xls
--Ȩ������  ����Ȥ
select * from dbo.DATA0549
select * from dbo.DATA0548
select * from dbo.DATA0547
select * from dbo.DATA0546
select * from dbo.DATA0499
select * from dbo.DATA0498_EXTENT
select * from dbo.DATA0498