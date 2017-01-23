/****** Object:  Table [dbo].[Table_1]    Script Date: 08/06/2013 13:55:39 ******/  
/*行列转换*/

SET ANSI_NULLS ON  
GO  
  
SET QUOTED_IDENTIFIER ON  
GO  
  
SET ANSI_PADDING ON  
GO  

/*对临时表无效*/  
IF OBJECT_ID ('#Table_1', 'U') IS NOT NULL  
   DROP TABLE #Table_1;  

CREATE TABLE #Table_1(  
    [name] [varchar](50) NOT NULL,  
    [score] [real] NOT NULL,  
    [subject_id] [int] NOT NULL  
) ON [PRIMARY]  
  
insert into #Table_1 ([name],[score],[subject_id]) values(  'a'    ,   90  ,   1   );  
insert into #Table_1 ([name],[score],[subject_id]) values(  'b'    ,   80  ,   2   );  
insert into #Table_1 ([name],[score],[subject_id]) values(  'c'    ,   70  ,   3   );  
insert into #Table_1 ([name],[score],[subject_id]) values(  'd'    ,   50  ,   1   );  
insert into #Table_1 ([name],[score],[subject_id]) values(  'e'    ,   40  ,   2   );  
insert into #Table_1 ([name],[score],[subject_id]) values(  'f'    ,   60  ,   1   );  

--显示1

SELECT [name],[1],[2],[3]  
FROM #Table_1  
pivot  
(  
  sum(score) for subject_id in ([1],[2],[3])  
) as pvt  

select * from #Table_1

--显示2

SELECT [name],[subject_id],[score]  
FROM  
(  
    SELECT [name],[1],[2],[3]  
    FROM #Table_1
    pivot  
    (  
      sum(score) for subject_id in ([1],[2],[3])  
    ) as pvt  
) p  
unpivot  
(  
    score for subject_id in([1],[2],[3])  
) as unpvt  