--查询那些存储过程使用 某一个 X 表
select b.name from syscomments a,sysobjects b where a.id=b.id and a.text LIKE '%BOM_cte%'