/* ��ͼ ��2017��1��4��16:00:08  --���Դ�����ͼ */
--������ͼ   ������Ԥ����Ϣ��ϸ�鿴  ֱ�ۻ�
CREATE VIEW vw_wn_info_jk AS

SELECT top 100 PERCENT 
d1.PART_NUMBER ��������,d1.CUST_NAME �ͻ���,d2.POSITION '����/����',d1.ENT_DATE ��������,d1.CREATED_USER_PTR �û�ָ��,d1.MODIFY_DATE �޸�����,d1.PRODUCT_CHARACTER ��������
,d2.PRODUCT_WARNING_CHARACTER Ԥ����ϸ,d2.WARNING_SOLUTION �������
FROM WN_DATA0001  d1 left join WN_DATA0002 d2 
on d2.WN_DATA0001_PTR=d1.RKEY
order by d1.ENT_DATE DESC

