-- ================================================
/*
Ԥ����Ϣ�洢���� �Զ��� 2017��1��4��13:54:13
*/
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Jack Chen,����>
-- Create date: <2017��1��4��15:10:56>
-- Description:	<����鿴Ԥ����Ϣ>
-- =============================================
ALTER PROCEDURE  WN_INFO_JK 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT d1.PART_NUMBER ��������,d1.CUST_NAME �ͻ���,d2.POSITION '����/����',d1.ENT_DATE ��������,d1.CREATED_USER_PTR �û�ָ��,d1.MODIFY_DATE �޸�����,d1.PRODUCT_CHARACTER ��������
,d2.PRODUCT_WARNING_CHARACTER Ԥ����ϸ,d2.WARNING_SOLUTION �������
FROM WN_DATA0001  d1 left join WN_DATA0002 d2 
on d2.WN_DATA0001_PTR=d1.RKEY
order by d1.ENT_DATE DESC

END
GO
