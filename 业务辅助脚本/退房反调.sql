--��ǩԼIDΪ����
select * from ContractMain where ProjectID = 12 and ReturnDate is not null and PaymentType  = 4

--��������״̬����֤Ϊ����״̬��
update  SaleItem set SaleStateCode = 3, SaleStateName = 'ǩԼ'  from ContractMain a, ContractDetail b, SaleItem c  where a.ContractID = b.ContractID and b.itemid = c.itemid and  a.ContractID = 886

--ɾ���˿��¼��δ���㣩
delete Receipt from Receipt a, ContractMain b  where a.ContractID = b.ContractID  and TypeCode = 6 and a.ContractID = 886


--�ÿ��˷����ڡ��˿�����
update ContractMain set ReturnDate = null, RefundDate = null where ContractID = 886

--ɾ���˷���¼
delete ItemReturn where AgreementID = 886