
--CAR 数据导出  提取字段

select distinct RKEY,异常严重程序, 报告者,签收者,临时矫正主管,临时矫正下对策者,
长期矫正主管,长期矫正下对策者,异常问题描述,原因分析,临时矫正解决对策,
长期矫正改善对策,开单知会名单,回复知会名单
FROM T_JZ ORDER BY RKEY