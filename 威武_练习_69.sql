
--F5 CAR ϵͳ��ͼ

--CREATE/ALTER VIEW VM_F5CAR_ROUT AS
select  top 100 percent d497.RKEY,d497.APPROVAL_ROUTE_CODE ��������,d497.APPROVAL_ROUTE_DESC ��������,d497.ABBR_NAME �������, 
d498.APPROVAL_STEP_NO ����С��,d498.APPROVAL_STEP_DESC С��������,
t_User.username ������
        from dbo.DATA0498 d498 
	left join DATA0499 d499		
		on d498.RKEY=d499.APPROVAL_ROUTE_STEP_PTR
	left join t_User 
		on d499.USER_PTR=t_User.rkey
		--��������
	left join DATA0497 d497
		on d497.RKEY=d498.APPROVAL_ROUTE_PTR	
	--where d497.APPROVAL_ROUTE_DESC like '%����%'	
	order  by APPROVAL_ROUTE_PTR,APPROVAL_STEP_NO
	
/*
select * from VM_F5CAR_ROUT
SELECT * FROM VM_F5CAR_JZINFO
*/