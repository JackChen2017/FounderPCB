--replace  (�ַ���,Ҫ��Q,��Q���) 
/*
SQL�п���ʹ��Replace��������ĳ���ֶ����ĳЩ�ַ������滻�������﷨���£� 
�﷨ 
REPLACE ( original-string, search-string, replace-string ) 
���� 
�����ĳ������Ϊ NULL���˺������� NULL�� 
original-string     ���������ַ�������Ϊ���ⳤ�ȡ� 
search-string     Ҫ�������� replace-string �滻���ַ��������ַ����ĳ��Ȳ�Ӧ���� 255 ���ֽڡ���� search-string �ǿ��ַ�������ԭ������ԭʼ�ַ����� 
replace-string     ���ַ��������滻 search-string����Ϊ���ⳤ�ȡ���� replacement-string �ǿ��ַ�������ɾ�����ֵ����� search-string�� 
���ӣ� 
UPDATE tableName SET recordName=REPLACE(recordName,'abc','ddd') 
����tableName�е�recordName�ֶ��е� abc �滻Ϊ ddd 
���������һ�㲻���ǲ�֧�� text,ntext�����ֶε��滻������ͨ������������ʵ�֣� 
update tableName set recordName=replace(cast(recordName as varchar(8000)) ,'abc','ddd')


2���滻�ֶ��еĻ��з����س���

1�� �س���

SELECT *, REPLACE(detail, CHAR(13) , '<br>') AS ��ʾ�滻������� FROM loginfo

2�����з�

SELECT *, REPLACE(detail, CHAR(10), '<br>') AS ��ʾ�滻������� FROM loginfo

3���س����з�

SELECT *, REPLACE(detail, CHAR(13) + CHAR(10), '<br>') AS ��ʾ�滻������� FROM loginfo

4�����س����з��滻��<BR><BR>

UPDATE loginfo 
SET detail = REPLACE(detail, CHAR(13) + CHAR(10), '<br><br>')

ע �� dos \win ϵ�л���� �س�+���з� CHAR(13)+CHAR(10)

�� unix \ Linux �ǻ��з�

ת��ֻҪ�ѻس���char(13) ȥ��������

����sql���

UPDATE loginfo SET detail = REPLACE(detail, CHAR(13) , '')

�滻 ���� ����

update User_Content set [Address]=substring([Address],1,patindex('%<%',[Address])-2)
where patindex('%<%',[Address])>2
*/