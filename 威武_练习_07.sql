/*Update ���

Update ��������޸ı��е�����

UPDATE ������ SET ������ = ��ֵ WHERE ������ = ĳֵ

UPDATE ����� SET ������ = ��ֵ FROM ������ �����  WHERE ������ = ĳֵ*/

USE AdventureWorks2008R2
SELECT * FROM Person.Address

SELECT * FROM Person.Address where AddressID=527
UPDATE Person.Address SET AddressLine2='test1'  where AddressID=527
--UPDATE��������д��
UPDATE Person.Address AS T1 SET T1.AddressLine2='test1'  where AddressID=527
--UPDATE������ȷд��
update t  set AddressLine2 ='test2' from Person.Address t where AddressID = 527

/*--����д��
UPDATE Person SET FirstName = 'Fred' WHERE LastName = 'Wilson' 
UPDATE Person SET Address = 'Zhongshan 23', City = 'Nanjing'
WHERE LastName = 'Wilson'
*/