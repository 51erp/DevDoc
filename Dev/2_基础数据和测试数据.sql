

--项目类型
insert into DictItemType (Code, Name) values (1,'房屋')
insert into DictItemType (Code, Name) values (2,'商业')
insert into DictItemType (Code, Name) values (3,'储藏间')
insert into DictItemType (Code, Name) values (4,'车位')
insert into DictItemType (Code, Name) values (5,'其它')

--收款类型
insert into DictReceiptType (Code, Name) values (1,'定金')
insert into DictReceiptType (Code, Name) values (2,'首付')
insert into DictReceiptType (Code, Name) values (3,'补差')
insert into DictReceiptType (Code, Name) values (4,'贷款')


---字典级数据，与算法相关，不能自行变更，系统初始化录入

--结算启动条件--
insert into DictSettleStandard (Code, Name) values (1,'首付')
insert into DictSettleStandard (Code, Name) values (2,'回款')
insert into DictSettleStandard (Code, Name) values (3,'指定金额')
insert into DictSettleStandard (Code, Name) values (4,'指定比例')


--结算基数--
insert into DictSettleBase (Code, Name) values (1,'回款金额')
insert into DictSettleBase (Code, Name) values (2,'合同金额')
insert into DictSettleBase (Code, Name) values (3,'首付金额')
insert into DictSettleBase (Code, Name) values (4,'单套结算')


--付款方式
insert into DictPayment (Code, Name) values (1,'一次性付款')
insert into DictPayment (Code, Name) values (2,'分期付款')
insert into DictPayment (Code, Name) values (3,'按揭贷款')
insert into DictPayment (Code, Name) values (4,'公积金贷款')

--insert into DictPayment (Code, Name) values (1,'一次性付款')
--insert into DictPayment (Code, Name) values (2,'分期付款')
--insert into DictPayment (Code, Name) values (3,'商业贷款首付全款')
--insert into DictPayment (Code, Name) values (4,'商业贷款首付分期')
--insert into DictPayment (Code, Name) values (5,'公积金贷款首付全款')
--insert into DictPayment (Code, Name) values (6,'公积金贷款首付分期')


--跳点基准--不区分项目类型、销售类型
insert into DictUpBase (Code, Name) values (1,'认购总额')
insert into DictUpBase (Code, Name) values (2,'合同总额')
insert into DictUpBase (Code, Name) values (3,'回款金额')
insert into DictUpBase (Code, Name) values (4,'销售面积')
insert into DictUpBase (Code, Name) values (5,'销售套数')

--房产销售状态(SaleItem)
insert into DictSaleState (Code, Name) values (0,'未售')
insert into DictSaleState (Code, Name) values (1,'认购')
insert into DictSaleState (Code, Name) values (2,'签约')
insert into DictSaleState (Code, Name) values (3,'交房')
insert into DictSaleState (Code, Name) values (4,'结案')


--合同类型(TransMain)
--1：认购
--2：签约
--3：退房

--业务结算状态(Transactions)
--1:未结
--2:结算



-----单元测试数据-------------------------------

--项目
insert into Project (ProjectName, FirstParty) values ('幸福家园','幸福房地产有限公司')
insert into Project (ProjectName, FirstParty) values ('城市花园','花园房地产有限公司')
insert into Project (ProjectName, FirstParty) values ('铂金汉宫','铂金房地产有限公司')

--客户
insert into Customer(ProjectID,CusName,Phone1) values (1,'张三','13900001234')
insert into Customer(ProjectID,CusName,Phone1) values (1,'李四','13911112222')
insert into Customer(ProjectID,CusName,Phone1) values (1,'王五','13922228888')
insert into Customer(ProjectID,CusName,Phone1) values (2,'李大宾','13933336666')
insert into Customer(ProjectID,CusName,Phone1) values (2,'郑小末','13944446666')
insert into Customer(ProjectID,CusName,Phone1) values (2,'陈强','13955556666')

--置业顾问
insert into Sales (SalesName,ProjectID,ProjectName) values ('赵东南',1,'幸福家园')
insert into Sales (SalesName,ProjectID,ProjectName) values ('钱西北',1,'幸福家园')
insert into Sales (SalesName,ProjectID,ProjectName) values ('孙中心',1,'幸福家园')
insert into Sales (SalesName,ProjectID,ProjectName) values ('周工',2,'空中花园')
insert into Sales (SalesName,ProjectID,ProjectName) values ('李师',2,'空中花园')
insert into Sales (SalesName,ProjectID,ProjectName) values ('王商',2,'空中花园')



--房产信息
--房屋
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','1','0101',1,80,5000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','1','0102',1,95,5050)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','2','1601',1,125.85,6500)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','2','2202',1,136.66,6588)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','2','3','0801',1,96,5375)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','2','3','1003',1,86.24,5454)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','2','3','3202',1,105.28,5608)

--商业
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','','','A301',2,120.55,8650)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','','','A302',2,245.76,8252)

--储藏间
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','001',3,12.25,2250)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','002',3,8.76,2000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','003',3,10.66,2250)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','004',3,15.38,3000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','005',3,10,3000)

--车位
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','C01',4,10,16000)
insert into SaleItem (ProjectID,ProjectName,Building,Unit,ItemNum,ItemType,Area,Price) values (1,'幸福家园','1','','C02',4,10,18500)


insert into sysuser (UserName, UserPwd, UserType) values ('admin', 1,0)

--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('user', 1, 2, 1,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('demo', 1, 2, 2,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('test', 1, 2, 3,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('manager', 1, 1, 1,'')
--insert into sysuser (UserName, UserPwd, UserType, ProjectID, ProjectName) values ('boss', 1, 1, 1,'')



--QQ:e2e2l6w5l6q7w5j9#
--sjqc@sjz_2016&CC       y1kxZrKe/5D48f3SEQQ+nmP64JFnngwo


