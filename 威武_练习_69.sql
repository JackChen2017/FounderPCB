
--F5 CAR 系统视图

--CREATE/ALTER VIEW VM_F5CAR_ROUT AS
select  top 100 percent d497.RKEY,d497.APPROVAL_ROUTE_CODE 审批名称,d497.APPROVAL_ROUTE_DESC 审批描述,d497.ABBR_NAME 审批简介, 
d498.APPROVAL_STEP_NO 审批小步,d498.APPROVAL_STEP_DESC 小步骤描述,
t_User.username 审批人
        from dbo.DATA0498 d498 
	left join DATA0499 d499		
		on d498.RKEY=d499.APPROVAL_ROUTE_STEP_PTR
	left join t_User 
		on d499.USER_PTR=t_User.rkey
		--具体流程
	left join DATA0497 d497
		on d497.RKEY=d498.APPROVAL_ROUTE_PTR	
	--where d497.APPROVAL_ROUTE_DESC like '%表面%'	
	order  by APPROVAL_ROUTE_PTR,APPROVAL_STEP_NO
	
/*
select * from VM_F5CAR_ROUT
SELECT * FROM VM_F5CAR_JZINFO
*/