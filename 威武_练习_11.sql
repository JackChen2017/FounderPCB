
--N'

/*
当引用 Unicode 字符数据类型 nchar、nvarchar 和 ntext 时，
“expression”应采用大写字母“N”作为前缀。
如果未指定“N”，则 SQL Server 会将字符串转换为与数据库或列的默认排序规则相对应的代码页。
此代码页中没有的字符都将丢失。有关详细信息，请参阅使用 Unicode 的服务器端编程。
*/