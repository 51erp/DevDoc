

--��Ŀ����
insert into DictItemType (Code, Name) values (1,'����')
insert into DictItemType (Code, Name) values (2,'��ҵ')
insert into DictItemType (Code, Name) values (3,'���ؼ�')
insert into DictItemType (Code, Name) values (4,'��λ')
insert into DictItemType (Code, Name) values (5,'����')

--�տ�����
insert into DictReceiptType (Code, Name) values (1,'����')
insert into DictReceiptType (Code, Name) values (2,'�׸�')
insert into DictReceiptType (Code, Name) values (3,'����')
insert into DictReceiptType (Code, Name) values (4,'����')


---�ֵ伶���ݣ����㷨��أ��������б����ϵͳ��ʼ��¼��

--������������--
insert into DictSettleStandard (Code, Name) values (1,'�׸�')
insert into DictSettleStandard (Code, Name) values (2,'�ؿ�')
insert into DictSettleStandard (Code, Name) values (3,'ָ�����')
insert into DictSettleStandard (Code, Name) values (4,'ָ������')


--�������--
insert into DictSettleBase (Code, Name) values (1,'�ؿ���')
insert into DictSettleBase (Code, Name) values (2,'��ͬ���')
insert into DictSettleBase (Code, Name) values (3,'�׸����')
insert into DictSettleBase (Code, Name) values (4,'���׽���')


--���ʽ
insert into DictPayment (Code, Name) values (1,'һ���Ը���')
insert into DictPayment (Code, Name) values (2,'���ڸ���')
insert into DictPayment (Code, Name) values (3,'���Ҵ���')
insert into DictPayment (Code, Name) values (4,'���������')

--insert into DictPayment (Code, Name) values (1,'һ���Ը���')
--insert into DictPayment (Code, Name) values (2,'���ڸ���')
--insert into DictPayment (Code, Name) values (3,'��ҵ�����׸�ȫ��')
--insert into DictPayment (Code, Name) values (4,'��ҵ�����׸�����')
--insert into DictPayment (Code, Name) values (5,'����������׸�ȫ��')
--insert into DictPayment (Code, Name) values (6,'����������׸�����')


--�����׼--��������Ŀ���͡���������
insert into DictUpBase (Code, Name) values (1,'�Ϲ��ܶ�')
insert into DictUpBase (Code, Name) values (2,'��ͬ�ܶ�')
insert into DictUpBase (Code, Name) values (3,'�ؿ���')
insert into DictUpBase (Code, Name) values (4,'�������')
insert into DictUpBase (Code, Name) values (5,'��������')

--��������״̬(SaleItem)
insert into DictSaleState (Code, Name) values (0,'δ��')
insert into DictSaleState (Code, Name) values (1,'�Ϲ�')
insert into DictSaleState (Code, Name) values (2,'ǩԼ')
insert into DictSaleState (Code, Name) values (3,'����')
insert into DictSaleState (Code, Name) values (4,'�᰸')


--��ͬ����(TransMain)
--1���Ϲ�
--2��ǩԼ
--3���˷�

--ҵ�����״̬(Transactions)
--1:δ��
--2:����



-----��Ԫ��������-------------------------------

--��Ŀ
insert into Project (ProjectName, FirstParty) values ('�Ҹ���԰','�Ҹ����ز����޹�˾')
insert into Project (ProjectName, FirstParty) values ('���л�԰','��԰���ز����޹�˾')
insert into Project (ProjectName, FirstParty) values ('���𺺹�','���𷿵ز����޹�˾')

--�ͻ�
insert into Customer(ProjectID,CusName,Phone1) values (1,'����','13900001234')
insert into Customer(ProjectID,CusName,Phone1) values (1,'����','13911112222')
insert into Customer(ProjectID,CusName,Phone1) values (1,'����','13922228888')
insert into Customer(ProjectID,CusName,Phone1) values (2,'����','13933336666')
insert into Customer(ProjectID,CusName,Phone1) values (2,'֣Сĩ','13944446666')
insert into Customer(ProjectID,CusName,Phone1) values (2,'��ǿ','13955556666')

--��ҵ����
insert into Sales (SalesName,ProjectID,ProjectName) values ('�Զ���',1,'�Ҹ���԰')
insert into Sales (SalesName,ProjectID,ProjectName) values ('Ǯ����',1,'�Ҹ���԰')
insert into Sales (SalesName,ProjectID,ProjectName) values ('������',1,'�Ҹ���԰')
insert into Sales (SalesName,ProjectID,ProjectName) values ('�ܹ�',2,'���л�԰')
insert into Sales (SalesName,ProjectID,ProjectName) values ('��ʦ',2,'���л�԰')
insert into Sales (SalesName,ProjectID,ProjectName) values ('����',2,'���л�԰')



--������Ϣ
--����
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','1','0101',1,80,5000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','1','0102',1,95,5050)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','2','1601',1,125.85,6500)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','2','2202',1,136.66,6588)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','2','3','0801',1,96,5375)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','2','3','1003',1,86.24,5454)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','2','3','3202',1,105.28,5608)

--��ҵ
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','','','A301',2,120.55,8650)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','','','A302',2,245.76,8252)

--���ؼ�
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','001',3,12.25,2250)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','002',3,8.76,2000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','003',3,10.66,2250)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','004',3,15.38,3000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','005',3,10,3000)

--��λ
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','C01',4,10,16000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'�Ҹ���԰','1','','C02',4,10,18500)


insert into sysuser (UserName, UserPwd, UserType) values ('admin', 1,0)

--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('user', 1, 2, 1,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('demo', 1, 2, 2,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('test', 1, 2, 3,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('manager', 1, 1, 1,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('boss', 1, 1, 1,'')



--QQ:e2e2l6w5l6q7w5j9#
--sjqc@sjz_2016&CC       y1kxZrKe/5D48f3SEQQ+nmP64JFnngwo


