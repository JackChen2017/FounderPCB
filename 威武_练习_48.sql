/* 视图 ：2017年1月4日16:00:08  --试试创建视图 */
--创建试图   各工序预警信息明细查看  直观化
CREATE VIEW vw_wn_info_jk AS

SELECT top 100 PERCENT 
d1.PART_NUMBER 部件号码,d1.CUST_NAME 客户名,d2.POSITION '部门/工序',d1.ENT_DATE 建立日期,d1.CREATED_USER_PTR 用户指针,d1.MODIFY_DATE 修改日期,d1.PRODUCT_CHARACTER 板子特性
,d2.PRODUCT_WARNING_CHARACTER 预警明细,d2.WARNING_SOLUTION 解决方案
FROM WN_DATA0001  d1 left join WN_DATA0002 d2 
on d2.WN_DATA0001_PTR=d1.RKEY
order by d1.ENT_DATE DESC

