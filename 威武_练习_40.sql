select * from sysobjects where xtype='p' order by crdate desc
select * from sysobjects where xtype='PK' order by crdate desc
select * from sysobjects where xtype='UQ' order by crdate desc

select DISTINCT XTYPE from sysobjects

/*
TR
SQ
FN
S 
D 
IT
F 
PK
P 
U 
TF
UQ
IF
V 
*/
sp_helptext tbInfo
sp_helptext tbInfo2
--select a.id,a.colorder,* from syscolumns a

EXEC tbInfo 'DATA0034' 
EXEC tbinfo2 'DATA0006'
