create procedure [dbo].[tbInfo]      
(      
    @tbName    varchar(50)    
)      
as      
select
        ����=case when a.colorder=1 then d.name else '' end,      
        ��˵��=case when a.colorder=1 then isnull(f.value,'') else '' end,      
        �ֶ����=a.colorder,      
        �ֶ���=a.name,      
        ��ʶ=case when COLUMNPROPERTY( a.id,a.name,'IsIdentity')=1 then '��'else '' end,     
        ����=case when exists(select 1 from sysobjects where xtype='PK' and name in (     
            select name from sysindexes where indid in(      
                select indid from sysindexkeys where id = a.id AND colid=a.colid     
            ))) then '��' else '' end,      
        ����=b.name,      
        ռ���ֽ���=a.length,      
        ����=COLUMNPROPERTY(a.id,a.name,'PRECISION'),      
        С��λ��=isnull(COLUMNPROPERTY(a.id,a.name,'Scale'),0),      
        �����=case when a.isnullable=1 then '��'else '' end,      
        Ĭ��ֵ=isnull(e.text,''),      
        �ֶ�˵��=isnull(g.[value],'')      
      from syscolumns a      
        left join systypes b on a.xtype=b.xusertype      
        inner join sysobjects d on a.id=d.id  and d.xtype='U' and  d.name<>'dtproperties'     
        left join syscomments e on a.cdefault=e.id      
     
  left join sys.extended_properties g on a.id=g.major_id AND a.colid = g.minor_id     
        left join sys.extended_properties f on d.id=f.major_id and f.minor_id=0     
     where d.name=@tbName    --���ֻ��ѯָ����,���ϴ�����     
     order by a.id,a.colorder