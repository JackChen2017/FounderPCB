create trigger tgr_name
on table_name
with encrypion --加密触发器
    for update...
as


/*
Update数据的时候就是先删除表记录，然后增加一条记录。这样在inserted和deleted表就都有update后的数据记录了。注意的是：触发器本身就是一个事务，所以在触发器里面可以对修改数据进行一些特殊的检查。如果不满足可以利用事务回滚，撤销操作。
*/