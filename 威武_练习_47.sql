-- ================================================
/*
预警信息存储过程 自定义 2017年1月4日13:54:13
*/
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Jack Chen,陈杏>
-- Create date: <2017年1月4日15:10:56>
-- Description:	<方便查看预警信息>
-- =============================================
ALTER PROCEDURE  WN_INFO_JK 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT d1.PART_NUMBER 部件号码,d1.CUST_NAME 客户名,d2.POSITION '部门/工序',d1.ENT_DATE 建立日期,d1.CREATED_USER_PTR 用户指针,d1.MODIFY_DATE 修改日期,d1.PRODUCT_CHARACTER 板子特性
,d2.PRODUCT_WARNING_CHARACTER 预警明细,d2.WARNING_SOLUTION 解决方案
FROM WN_DATA0001  d1 left join WN_DATA0002 d2 
on d2.WN_DATA0001_PTR=d1.RKEY
order by d1.ENT_DATE DESC

END
GO
