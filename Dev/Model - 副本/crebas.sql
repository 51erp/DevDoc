/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2019-01-05 9:17:20                           */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('AreaChange')
            and   type = 'U')
   drop table AreaChange
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AreaChangeDetail')
            and   type = 'U')
   drop table AreaChangeDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AreaChangeMain')
            and   type = 'U')
   drop table AreaChangeMain
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Authorize')
            and   type = 'U')
   drop table Authorize
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ContractDetail')
            and   type = 'U')
   drop table ContractDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ContractMain')
            and   type = 'U')
   drop table ContractMain
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Customer')
            and   type = 'U')
   drop table Customer
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictItemType')
            and   type = 'U')
   drop table DictItemType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictPayType')
            and   type = 'U')
   drop table DictPayType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictReceiptType')
            and   type = 'U')
   drop table DictReceiptType
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictSaleState')
            and   type = 'U')
   drop table DictSaleState
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictSettleBase')
            and   type = 'U')
   drop table DictSettleBase
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictSettleStandard')
            and   type = 'U')
   drop table DictSettleStandard
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DictUpBase')
            and   type = 'U')
   drop table DictUpBase
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Discount')
            and   type = 'U')
   drop table Discount
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FullSettleDetail')
            and   type = 'U')
   drop table FullSettleDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FullSettleMain')
            and   type = 'U')
   drop table FullSettleMain
go

if exists (select 1
            from  sysobjects
           where  id = object_id('HandOver')
            and   type = 'U')
   drop table HandOver
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Installment')
            and   type = 'U')
   drop table Installment
go

if exists (select 1
            from  sysobjects
           where  id = object_id('InstallmentHis')
            and   type = 'U')
   drop table InstallmentHis
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemExchange')
            and   type = 'U')
   drop table ItemExchange
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ItemReturn')
            and   type = 'U')
   drop table ItemReturn
go

if exists (select 1
            from  sysobjects
           where  id = object_id('MenuList')
            and   type = 'U')
   drop table MenuList
go

if exists (select 1
            from  sysobjects
           where  id = object_id('NameExchange')
            and   type = 'U')
   drop table NameExchange
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ParaIntervalDays')
            and   type = 'U')
   drop table ParaIntervalDays
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ParaProject')
            and   type = 'U')
   drop table ParaProject
go

if exists (select 1
            from  sysobjects
           where  id = object_id('ParaSettle')
            and   type = 'U')
   drop table ParaSettle
go

if exists (select 1
            from  sysobjects
           where  id = object_id('PaymentMode')
            and   type = 'U')
   drop table PaymentMode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Project')
            and   type = 'U')
   drop table Project
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Receipt')
            and   type = 'U')
   drop table Receipt
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Role')
            and   type = 'U')
   drop table Role
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SaleItem')
            and   type = 'U')
   drop table SaleItem
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Sales')
            and   type = 'U')
   drop table Sales
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SchemeRate')
            and   type = 'U')
   drop table SchemeRate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SchemeSettle')
            and   type = 'U')
   drop table SchemeSettle
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SchemeUpgrade')
            and   type = 'U')
   drop table SchemeUpgrade
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SettleDetail')
            and   type = 'U')
   drop table SettleDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SettleMain')
            and   type = 'U')
   drop table SettleMain
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SubscribeDetail')
            and   type = 'U')
   drop table SubscribeDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SubscribeMain')
            and   type = 'U')
   drop table SubscribeMain
go

if exists (select 1
            from  sysobjects
           where  id = object_id('SysUser')
            and   type = 'U')
   drop table SysUser
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Transactions')
            and   type = 'U')
   drop table Transactions
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UpSettleDetail')
            and   type = 'U')
   drop table UpSettleDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UpSettleMain')
            and   type = 'U')
   drop table UpSettleMain
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UpValue')
            and   type = 'U')
   drop table UpValue
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UserProject')
            and   type = 'U')
   drop table UserProject
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Z00_StopUse_Operation')
            and   type = 'U')
   drop table Z00_StopUse_Operation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('test1')
            and   type = 'U')
   drop table test1
go

if exists (select 1
            from  sysobjects
           where  id = object_id('test2')
            and   type = 'U')
   drop table test2
go

/*==============================================================*/
/* Table: AreaChange                                            */
/*==============================================================*/
create table AreaChange (
   ID                   int                  identity,
   ContractID           int                  null,
   ItemID               int                  null,
   ItemNum              varchar(20)          null,
   OrigDownPay          money                null,
   OrigLoan             money                null,
   OrigTotalAmount      money                null,
   OrigAmount           money                null,
   OrigPrice            money                null,
   OrigArea             decimal(18,2)        null,
   NewArea              decimal(18,2)        null,
   ConfirmType          varchar(10)          null,
   ChangeDate           date                 null,
   Memo                 varchar(200)         null,
   MakeUserName         varchar(20)          null,
   MakeDate             datetime             null,
   constraint PK_AREACHANGE primary key (ID)
)
go

/*==============================================================*/
/* Table: AreaChangeDetail                                      */
/*==============================================================*/
create table AreaChangeDetail (
   ID                   int                  identity,
   MainID               int                  null,
   ItemID               int                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   OrigPrice            money                null,
   OrigAmount           money                null,
   OrigArea             decimal(18,2)        null,
   NewArea              decimal(18,2)        null,
   constraint PK_AREACHANGEDETAIL primary key (ID)
)
go

/*==============================================================*/
/* Table: AreaChangeMain                                        */
/*==============================================================*/
create table AreaChangeMain (
   ID                   int                  identity,
   ContractID           int                  null,
   OrigDownPay          money                null,
   OrigLoan             money                null,
   OrigTotalAmount      money                null,
   NewDownPay           money                null,
   NewLoan              money                null,
   NewTotalAmount       money                null,
   ConfirmType          varchar(10)          null,
   ChangeDate           date                 null,
   Memo                 varchar(200)         null,
   MakeUserName         varchar(20)          null,
   MakeDate             datetime             null,
   constraint PK_AREACHANGEMAIN primary key (ID)
)
go

/*==============================================================*/
/* Table: Authorize                                             */
/*==============================================================*/
create table Authorize (
   RoleID               int                  null,
   MenuID               int                  null,
   MenuName             varchar(100)         null
)
go

/*==============================================================*/
/* Table: ContractDetail                                        */
/*==============================================================*/
create table ContractDetail (
   ConDID               int                  identity,
   ContractID           int                  null,
   RowID                int                  null,
   ItemID               int                  null,
   ItemTypeCode         int                  null,
   ItemTypeName         varchar(50)          null,
   IsBind               bit                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(50)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   Amount               money                null,
   constraint PK_CONTRACTDETAIL primary key (ConDID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ContractDetail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ContractID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ContractDetail', 'column', 'ContractID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '与主表关联',
   'user', @CurrentUser, 'table', 'ContractDetail', 'column', 'ContractID'
go

/*==============================================================*/
/* Table: ContractMain                                          */
/*==============================================================*/
create table ContractMain (
   ContractID           int                  identity,
   SubScribeID          int                  null,
   ContractNum          varchar(50)          null,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   SubscribeDate        date                 null,
   SubscribeSalesID     int                  null,
   SubscribeSalesName   varchar(20)          null,
   CustomerID           int                  null,
   CustomerName         varchar(50)          null,
   CustomerPhone        varchar(50)          null,
   ContractDate         date                 null,
   PaymentID            int                  null,
   PaymentName          varchar(50)          null,
   PaymentType          int                  null,
   DownPayRate          int                  null default 0,
   DownPayAmount        money                null,
   Loan                 money                null,
   TotalAmount          money                null,
   Discount             varchar(200)         null,
   Fund                 money                null,
   FormalNum            varchar(20)          null,
   FormalDate           varchar(20)          null,
   SalesID              int                  null,
   SalesName            varchar(20)          null,
   Memo                 varchar(2000)        null,
   LoanDate             date                 null,
   ConfirmDate          date                 null,
   FullSettled          int                  null default 0,
   ReturnDate           date                 null,
   RefundDate           date                 null,
   ReturnReason         varchar(200)         null,
   ReturnUserName       varchar(20)          null,
   PreviousCustomer     varchar(200)         null,
   PreviousSales        varchar(200)         null,
   MakeDate             datetime             null,
   UserID               int                  null,
   UserName             varchar(20)          null,
   State                int                  null default 1,
   ExtField0            varchar(200)         null,
   ExtField1            varchar(200)         null,
   ExtField2            varchar(200)         null,
   ExtField3            varchar(200)         null,
   ExtField4            varchar(200)         null,
   ExtField5            varchar(200)         null,
   ExtField6            varchar(200)         null,
   ExtField7            varchar(200)         null,
   ExtField8            varchar(200)         null,
   ExtField9            varchar(200)         null,
   constraint PK_CONTRACTMAIN primary key (ContractID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ContractMain')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'FullSettled')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'FullSettled'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '填入重算表ID',
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'FullSettled'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ContractMain')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PreviousCustomer')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'PreviousCustomer'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '累积更新客户名称',
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'PreviousCustomer'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ContractMain')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'PreviousSales')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'PreviousSales'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '累积更新置业顾问名称',
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'PreviousSales'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('ContractMain')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:退房',
   'user', @CurrentUser, 'table', 'ContractMain', 'column', 'State'
go

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   CustomerID           int                  identity,
   ProjectID            int                  null,
   CustomerName         varchar(50)          null,
   CustomerPhone        varchar(50)          null,
   PID                  varchar(18)          null,
   Addr                 varchar(100)         null,
   CusTypeCode          int                  null,
   CusTypeName          varchar(50)          null,
   constraint PK_CUSTOMER primary key (CustomerID)
)
go

/*==============================================================*/
/* Table: DictItemType                                          */
/*==============================================================*/
create table DictItemType (
   Code                 int                  identity,
   Name                 varchar(50)          null,
   ProjectID            int                  null,
   Memo                 varchar(200)         null,
   State                int                  null default 1,
   constraint PK_DICTITEMTYPE primary key (Code)
)
go

/*==============================================================*/
/* Table: DictPayType                                           */
/*==============================================================*/
create table DictPayType (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

/*==============================================================*/
/* Table: DictReceiptType                                       */
/*==============================================================*/
create table DictReceiptType (
   Code                 int                  not null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null,
   IsSys                bit                  null default 0,
   IsAchievement        bit                  null default 0,
   State                int                  null default 1,
   constraint PK_DICTRECEIPTTYPE primary key (Code)
)
go

/*==============================================================*/
/* Table: DictSaleState                                         */
/*==============================================================*/
create table DictSaleState (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DictSaleState') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DictSaleState' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '1 ：未售
   2 ：认购
   3 ：签约
   4 ：结案', 
   'user', @CurrentUser, 'table', 'DictSaleState'
go

/*==============================================================*/
/* Table: DictSettleBase                                        */
/*==============================================================*/
create table DictSettleBase (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DictSettleBase') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DictSettleBase' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '1,''回款金额''
   2,''合同金额''
   3,''首付金额''
   4,''单套结算''
   ', 
   'user', @CurrentUser, 'table', 'DictSettleBase'
go

/*==============================================================*/
/* Table: DictSettleStandard                                    */
/*==============================================================*/
create table DictSettleStandard (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DictSettleStandard') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DictSettleStandard' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '结算启动条件
   1,''首付''
   2,''回款''
   3,''指定金额''
   4,''指定比例''
   ', 
   'user', @CurrentUser, 'table', 'DictSettleStandard'
go

/*==============================================================*/
/* Table: DictUpBase                                            */
/*==============================================================*/
create table DictUpBase (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

/*==============================================================*/
/* Table: Discount                                              */
/*==============================================================*/
create table Discount (
   ID                   int                  null,
   Name                 varchar(200)         null,
   Content              varchar(500)         null,
   Memo                 varchar(200)         null
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Discount') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Discount' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '优惠政策', 
   'user', @CurrentUser, 'table', 'Discount'
go

/*==============================================================*/
/* Table: FullSettleDetail                                      */
/*==============================================================*/
create table FullSettleDetail (
   ID                   int                  identity,
   FullSettleID         int                  null,
   ContractID           int                  null,
   ContractNum          varchar(50)          null,
   CustomerName         varchar(50)          null,
   SubscribeDate        date                 null,
   ContractDate         date                 null,
   ItemID               int                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   Amount               money                null,
   TotalAmount          money                null,
   BottomPrice          money                null default 0,
   ReceiptAll           money                null default 0,
   CommissionAll        money                null default 0,
   PremiumAll           money                null default 0,
   TotalAll             money                null default 0,
   CommissionSettleAll  money                null default 0,
   PremiumSettleAll     money                null default 0,
   UpSettleAll          money                null default 0,
   SettleAll            money                null default 0,
   SettleDifference     money                null default 0,
   constraint PK_FULLSETTLEDETAIL primary key (ID)
)
go

/*==============================================================*/
/* Table: FullSettleMain                                        */
/*==============================================================*/
create table FullSettleMain (
   FullSettleID         int                  identity,
   TableName            varchar(200)         null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   SettleDate           date                 null,
   TableMaker           varchar(50)          null,
   CheckDate            date                 null,
   Checker              varchar(50)          null,
   MakeDate             datetime             null,
   UserID               int                  null,
   UserName             varchar(20)          null,
   constraint PK_FULLSETTLEMAIN primary key (FullSettleID)
)
go

/*==============================================================*/
/* Table: HandOver                                              */
/*==============================================================*/
create table HandOver (
   ID                   int                  identity,
   ContractID           int                  null,
   ExchangeType         int                  null,
   OrigID               int                  null,
   OrigName             varchar(20)          null,
   OrigPhone            varchar(30)          null,
   NewID                int                  null,
   NewName              varchar(20)          null,
   Relation             varchar(50)          null,
   ExchangeDate         date                 null,
   Memo                 varchar(200)         null,
   MakeUserName         varchar(20)          null,
   MakeDate             datetime             null,
   constraint PK_HANDOVER primary key (ID)
)
go

/*==============================================================*/
/* Table: Installment                                           */
/*==============================================================*/
create table Installment (
   ID                   int                  identity,
   ContractID           int                  null,
   Sequence             int                  null,
   PayDate              varchar(20)          null,
   Amount               money                null,
   Settled              int                  null default 0
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Installment') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Installment' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '分期付款的时间和金额', 
   'user', @CurrentUser, 'table', 'Installment'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Installment')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Settled')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Installment', 'column', 'Settled'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:未结算
   >0:结算标记号',
   'user', @CurrentUser, 'table', 'Installment', 'column', 'Settled'
go

/*==============================================================*/
/* Table: InstallmentHis                                        */
/*==============================================================*/
create table InstallmentHis (
   ContractID           int                  null,
   SourceID             int                  null,
   SourceType           int                  null,
   Sequence             int                  null,
   PayDate              varchar(20)          null,
   Amount               money                null,
   Settled              int                  null default 0
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('InstallmentHis')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Settled')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'InstallmentHis', 'column', 'Settled'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:未结算
   >0:结算标记号',
   'user', @CurrentUser, 'table', 'InstallmentHis', 'column', 'Settled'
go

/*==============================================================*/
/* Table: ItemExchange                                          */
/*==============================================================*/
create table ItemExchange (
   ID                   int                  identity,
   ProjectID            int                  null,
   ContractID           int                  null,
   ItemTypeName         varchar(10)          null,
   OrigContractID       int                  null,
   CustomerID           int                  null,
   CustomerName         varchar(50)          null,
   CustomerPhone        varchar(50)          null,
   ReceiptTotal         money                null,
   OrigItemID           int                  null,
   OrigBuilding         varchar(10)          null,
   OrigUnit             varchar(20)          null,
   OrigItemNum          varchar(20)          null,
   ItemID               int                  null,
   Building             varchar(10)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   SubscribeDate        date                 null,
   ExchangeDate         date                 null,
   Memo                 varchar(200)         null,
   SalesName            varchar(20)          null,
   MakeUserName         varchar(20)          null,
   MakeDate             datetime             null,
   constraint PK_ITEMEXCHANGE primary key (ID)
)
go

/*==============================================================*/
/* Table: ItemReturn                                            */
/*==============================================================*/
create table ItemReturn (
   ID                   int                  identity,
   AgreementID          int                  null,
   OperationType        varchar(10)          null,
   ItemID               int                  null,
   Building             varchar(10)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   SalesID              int                  null,
   SalesName            varchar(20)          null,
   IsRefund             bit                  null default 0,
   ReturnDate           date                 null,
   Memo                 varchar(200)         null,
   MakeUserName         varchar(20)          null,
   MakeDate             datetime             null,
   constraint PK_ITEMRETURN primary key (ID)
)
go

/*==============================================================*/
/* Table: MenuList                                              */
/*==============================================================*/
create table MenuList (
   ID                   int                  null,
   MenuName             varchar(100)         null,
   MenuText             varchar(100)         null,
   ParentID             int                  null,
   IsDefault            bit                  null default 0
)
go

/*==============================================================*/
/* Table: NameExchange                                          */
/*==============================================================*/
create table NameExchange (
   ID                   int                  identity,
   AgreementID          int                  null,
   ExchangeType         varchar(10)          null,
   OrigID               int                  null,
   OrigName             varchar(20)          null,
   OrigPhone            varchar(30)          null,
   NewID                int                  null,
   NewName              varchar(20)          null,
   Relation             varchar(50)          null,
   ExchangeDate         date                 null,
   Memo                 varchar(200)         null,
   MakeUserName         varchar(20)          null,
   MakeDate             datetime             null,
   constraint PK_NAMEEXCHANGE primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('NameExchange')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ExchangeType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'NameExchange', 'column', 'ExchangeType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '认购、签约',
   'user', @CurrentUser, 'table', 'NameExchange', 'column', 'ExchangeType'
go

/*==============================================================*/
/* Table: ParaIntervalDays                                      */
/*==============================================================*/
create table ParaIntervalDays (
   ID                   int                  identity,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   ItemTypeCode         int                  null,
   ItemTypeName         varchar(50)          null,
   IntervalDays         int                  null,
   constraint PK_PARAINTERVALDAYS primary key (ID)
)
go

/*==============================================================*/
/* Table: ParaProject                                           */
/*==============================================================*/
create table ParaProject (
   ID                   int                  identity,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   ParaTypeID           int                  null,
   ParaTypeName         varchar(50)          null,
   ItemTypeCode         int                  null,
   ItemTypeName         varchar(50)          null,
   ParaValue            int                  null,
   constraint PK_PARAPROJECT primary key (ID)
)
go

/*==============================================================*/
/* Table: ParaSettle                                            */
/*==============================================================*/
create table ParaSettle (
   ID                   int                  identity,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   ClosingDate          int                  null,
   constraint PK_PARASETTLE primary key (ID)
)
go

/*==============================================================*/
/* Table: PaymentMode                                           */
/*==============================================================*/
create table PaymentMode (
   ID                   int                  identity,
   ProjectID            int                  null,
   PayName              varchar(50)          null,
   PayType              int                  null,
   PayTypeName          varchar(100)         null,
   DownPayRate          int                  null,
   StandardCode         int                  null,
   StandardName         varchar(50)          null,
   BaseCode             int                  null,
   BaseName             varchar(50)          null,
   Memo                 varchar(200)         null,
   State                int                  null default 1,
   constraint PK_PAYMENTMODE primary key (ID)
)
go

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project (
   ProjectID            int                  identity,
   ProjectName          varchar(100)         null,
   FirstParty           varchar(100)         null,
   Memo                 varchar(500)         null,
   CreateDate           datetime             null,
   State                bit                  null default 1,
   constraint PK_PROJECT primary key (ProjectID)
)
go

/*==============================================================*/
/* Table: Receipt                                               */
/*==============================================================*/
create table Receipt (
   ID                   int                  identity,
   ContractID           int                  null,
   SubscribeID          int                  null,
   ProjectID            int                  null,
   Amount               money                null,
   RecDate              datetime             null,
   TypeCode             int                  null,
   TypeName             varchar(50)          null,
   IsLoan               bit                  null default 0,
   SettleState          int                  null default 0,
   Memo                 varchar(200)         null,
   SalesID              int                  null,
   SalesName            varchar(20)          null,
   Source               int                  null default 0,
   MakeDate             datetime             null,
   Maker                varchar(50)          null,
   constraint PK_RECEIPT primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Receipt')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'TypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '定金 = 1
   首付 = 2
   贷款 = 3
   全款 = 4',
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'TypeCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Receipt')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsLoan')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'IsLoan'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '款项为两种：
   应收、贷款
   
   应收款分为：
   定金
   首付
   补差
   限价',
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'IsLoan'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Receipt')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SettleState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'SettleState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0：未结算
   已结算为结算编号',
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'SettleState'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('Receipt')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Source')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'Source'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0：业务生成
   1：手工录入',
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'Source'
go

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role (
   RoleID               int                  identity,
   RoleName             varchar(50)          null,
   Memo                 varchar(200)         null,
   State                bit                  null default 1,
   constraint PK_ROLE primary key (RoleID)
)
go

/*==============================================================*/
/* Table: SaleItem                                              */
/*==============================================================*/
create table SaleItem (
   ItemID               int                  identity,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   PayModeID            int                  null,
   PayModeName          varchar(50)          null,
   PayTypeCode          int                  null,
   PayTypeName          varchar(50)          null,
   SettleStandardCode   int                  null,
   SettleStandardName   varchar(50)          null,
   SettleBaseCode       int                  null,
   SettleBaseName       varchar(50)          null,
   SettleStandardAmount money                null,
   SettleStandardRate   decimal(18,2)        null,
   SettleRate           decimal(18,2)        null default 0,
   SettleAmount         money                null default 0,
   IsLocking            bit                  null default 0,
   UpID                 int                  null,
   UpName               varchar(50)          null,
   BottomPrice          money                null default 0,
   BottomPriceType      bit                  null default 1,
   BottomPriceLimit     money                null default 0,
   BottomPriceRate      int                  null default 0,
   Region               varchar(20)          null,
   Stage                int                  null,
   ItemTypeCode         int                  null default 1,
   ItemTypeName         varchar(50)          null,
   SaleStateCode        int                  null default 1,
   SaleStateName        varchar(50)          null default '待售',
   IsBind               bit                  null default 0,
   Memo                 varchar(200)         null,
   Property1            varchar(50)          null,
   Property2            varchar(50)          null,
   constraint PK_SALEITEM primary key (ItemID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SaleItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'BottomPriceType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'BottomPriceType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '暂停用',
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'BottomPriceType'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SaleItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ItemTypeName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'ItemTypeName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '待售',
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'ItemTypeName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SaleItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SaleStateCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'SaleStateCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '保留
   待售
   认购
   签约',
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'SaleStateCode'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SaleItem')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'IsBind')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'IsBind'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:主售
   1:附属',
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'IsBind'
go

/*==============================================================*/
/* Table: Sales                                                 */
/*==============================================================*/
create table Sales (
   SalesID              int                  identity,
   SalesName            varchar(20)          null,
   Phone                varchar(20)          null,
   InDate               date                 null,
   OutDate              date                 null,
   Position             varchar(50)          null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   Memo                 varchar(200)         null,
   constraint PK_SALES primary key (SalesID)
)
go

/*==============================================================*/
/* Table: SchemeRate                                            */
/*==============================================================*/
create table SchemeRate (
   ID                   int                  identity,
   ProjectID            int                  null,
   RateName             varchar(50)          null,
   ItemTypeCode         int                  null,
   ItemTypeName         varchar(50)          null,
   CommissionType       bit                  null,
   Rate                 float                null default 0,
   Amount               money                null default 0,
   BeginDate            date                 null,
   EndDate              date                 null,
   IsDefault            bit                  null default 0,
   State                bit                  null default 1,
   constraint PK_SCHEMERATE primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SchemeRate')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CommissionType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SchemeRate', 'column', 'CommissionType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:rate   1:amount',
   'user', @CurrentUser, 'table', 'SchemeRate', 'column', 'CommissionType'
go

/*==============================================================*/
/* Table: SchemeSettle                                          */
/*==============================================================*/
create table SchemeSettle (
   ID                   int                  identity,
   PayCode              int                  null,
   PayName              varchar(50)          null,
   StandardCode         int                  null,
   StandardName         varchar(50)          null,
   BaseCode             int                  null,
   BaseName             varchar(50)          null,
   constraint PK_SCHEMESETTLE primary key (ID)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('SchemeSettle') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'SchemeSettle' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '
   ', 
   'user', @CurrentUser, 'table', 'SchemeSettle'
go

/*==============================================================*/
/* Table: SchemeUpgrade                                         */
/*==============================================================*/
create table SchemeUpgrade (
   UPID                 int                  identity,
   UpName               varchar(200)         null,
   ProjectID            int                  null,
   BaseRate             decimal(5,2)         null,
   UpBaseCode           int                  null,
   UpBaseName           varchar(50)          null,
   IsSubscribe          bit                  null default 0,
   BeginDate            date                 null,
   EndDate              date                 null,
   constraint PK_SCHEMEUPGRADE primary key (UPID)
)
go

/*==============================================================*/
/* Table: SettleDetail                                          */
/*==============================================================*/
create table SettleDetail (
   ID                   int                  identity,
   SettleID             char(10)             null,
   ContractID           int                  null,
   ContractNum          varchar(50)          null,
   CustomerName         varchar(20)          null,
   ItemTypeName         varchar(20)          null,
   SubscribeDate        date                 null,
   ContractDate         date                 null,
   RecDate              date                 null,
   PaymentName          varchar(50)          null,
   ItemID               int                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   Amount               money                null,
   TotalAmount          money                null,
   DownPayRate          float                null,
   DownPayAmount        money                null default 0,
   Loan                 money                null default 0,
   SettleStandardCode   int                  null,
   SettleBaseCode       int                  null,
   SettleRate           decimal(6,2)         null,
   SettleAmount         money                null,
   BottomPrice          money                null default 0,
   BottomPriceLimit     money                null,
   BottomPriceRate      decimal(6,2)         null,
   RecLoan              money                null,
   RecDownPay           money                null,
   RecDiffer            money                null default 0,
   RecDeliver           money                null,
   RecLimit             money                null,
   RecSettleTotal       money                null default 0,
   PremiumAll           money                null,
   CommAll              money                null,
   SettleAll            money                null,
   NoSettleAll          money                null,
   Commission           money                null default 0,
   Premium              money                null default 0,
   CommTotal            money                null default 0,
   SalesName            varchar(20)          null,
   constraint PK_SETTLEDETAIL primary key (ID)
)
go

/*==============================================================*/
/* Table: SettleMain                                            */
/*==============================================================*/
create table SettleMain (
   SettleID             int                  identity,
   TableName            varchar(200)         null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   SettlePeriod         varchar(20)          null,
   ClosingDate          date                 null,
   SettleDate           date                 null,
   TableMaker           varchar(50)          null,
   CheckDate            date                 null,
   Checker              varchar(50)          null,
   MakeDate             datetime             null,
   UserID               int                  null,
   UserName             varchar(20)          null,
   constraint PK_SETTLEMAIN primary key (SettleID)
)
go

/*==============================================================*/
/* Table: SubscribeDetail                                       */
/*==============================================================*/
create table SubscribeDetail (
   SubDID               int                  identity,
   SubscribeID          int                  null,
   RowID                int                  null,
   ItemID               int                  null,
   ItemTypeCode         int                  null,
   ItemTypeName         varchar(50)          null,
   IsBind               bit                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(50)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   Amount               money                null,
   constraint PK_SUBSCRIBEDETAIL primary key (SubDID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SubscribeDetail')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SubscribeID')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SubscribeDetail', 'column', 'SubscribeID'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '与主表关联',
   'user', @CurrentUser, 'table', 'SubscribeDetail', 'column', 'SubscribeID'
go

/*==============================================================*/
/* Table: SubscribeMain                                         */
/*==============================================================*/
create table SubscribeMain (
   SubscribeID          int                  identity,
   ContractID           int                  null,
   SubscribeNum         varchar(50)          null,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   CustomerID           int                  null,
   CustomerName         varchar(50)          null,
   CustomerPhone        varchar(50)          null,
   SubscribeDate        date                 null,
   LastContractDate     date                 null,
   ReturnDate           date                 null,
   RefundDate           date                 null,
   ReturnReason         varchar(200)         null,
   ReturnUserName       varchar(20)          null,
   TotalAmount          money                null,
   SalesID              int                  null,
   SalesName            varchar(50)          null,
   Memo                 varchar(2000)        null,
   MakeDate             datetime             null,
   UserID               int                  null,
   UserName             varchar(20)          null,
   State                int                  null default 1,
   ExtField0            varchar(200)         null,
   ExtField1            varchar(200)         null,
   ExtField2            varchar(200)         null,
   ExtField3            varchar(200)         null,
   ExtField4            varchar(200)         null,
   ExtField5            varchar(200)         null,
   ExtField6            varchar(200)         null,
   ExtField7            varchar(200)         null,
   ExtField8            varchar(200)         null,
   ExtField9            varchar(200)         null,
   constraint PK_SUBSCRIBEMAIN primary key (SubscribeID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SubscribeMain')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'State')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SubscribeMain', 'column', 'State'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:退房',
   'user', @CurrentUser, 'table', 'SubscribeMain', 'column', 'State'
go

/*==============================================================*/
/* Table: SysUser                                               */
/*==============================================================*/
create table SysUser (
   ID                   int                  identity,
   UserName             varchar(50)          null,
   UserPwd              varchar(50)          null default '123456',
   ProjectID            varchar(50)          null,
   ProjectName          varchar(200)         null,
   RoleID               int                  null,
   RoleName             varchar(200)         null,
   UserType             int                  null default 1,
   Memo                 varchar(2000)        null,
   State                bit                  null default 1,
   constraint PK_SYSUSER primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('SysUser')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'UserType')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SysUser', 'column', 'UserType'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0:admin
   1: sysuser',
   'user', @CurrentUser, 'table', 'SysUser', 'column', 'UserType'
go

insert into sysuser (UserName, UserPwd, UserType) values ('admin',1,0)

/*==============================================================*/
/* Table: Transactions                                          */
/*==============================================================*/
create table Transactions (
   ProjectID            int                  null,
   ContractID           int                  null,
   TransType            int                  null,
   TransTypeName        varchar(20)          null,
   TransSource          int                  null
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('Transactions') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'Transactions' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   '可用于查看业务操作历史', 
   'user', @CurrentUser, 'table', 'Transactions'
go

/*==============================================================*/
/* Table: UpSettleDetail                                        */
/*==============================================================*/
create table UpSettleDetail (
   ID                   int                  identity,
   UpSettleID           int                  null,
   ContractID           varchar(50)          null,
   CustomerName         varchar(20)          null,
   SubscribeDate        date                 null,
   ContractDate         date                 null,
   ItemID               int                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(20)          null,
   Area                 decimal(9,2)         null,
   Price                money                null,
   Amount               money                null,
   TotalAmount          money                null,
   ReceiptAll           money                null default 0,
   BaseRate             decimal(5,2)         null,
   UpRate               decimal(5,2)         null,
   SettleAmount         money                null default 0,
   constraint PK_UPSETTLEDETAIL primary key (ID)
)
go

/*==============================================================*/
/* Table: UpSettleMain                                          */
/*==============================================================*/
create table UpSettleMain (
   UpSettleID           int                  identity,
   TableName            varchar(200)         null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   SettlePeriod         varchar(20)          null,
   ClosingDate          date                 null,
   SettleDate           date                 null,
   TableMaker           varchar(50)          null,
   CheckDate            date                 null,
   Checker              varchar(50)          null,
   MakeDate             datetime             null,
   UserID               int                  null,
   UserName             varchar(20)          null,
   constraint PK_UPSETTLEMAIN primary key (UpSettleID)
)
go

/*==============================================================*/
/* Table: UpValue                                               */
/*==============================================================*/
create table UpValue (
   UPID                 int                  null,
   RowNum               int                  null,
   BeginValue           decimal(18,2)        null,
   EndValue             decimal(18,2)        null,
   UpRate               decimal(5,2)         null,
   Enabled              int                  null default 0,
   BaseOnRate           decimal(5,2)         null
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('UpValue')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Enabled')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'UpValue', 'column', 'Enabled'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '存储跳点报表ID',
   'user', @CurrentUser, 'table', 'UpValue', 'column', 'Enabled'
go

/*==============================================================*/
/* Table: UserProject                                           */
/*==============================================================*/
create table UserProject (
   UserID               int                  null,
   UserName             varchar(50)          null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null
)
go

/*==============================================================*/
/* Table: Z00_StopUse_Operation                                 */
/*==============================================================*/
create table Z00_StopUse_Operation (
   ID                   int                  null,
   DocmentType          int                  null,
   OperationType        varchar(20)          null,
   OperationDate        date                 null,
   Memo                 varchar(200)         null,
   OperationUser        varchar(20)          null,
   AgreementID          int                  identity,
   AgreementNum         varchar(50)          null,
   AgreementDate        date                 null,
   CustomerID           int                  null,
   CustomerName         varchar(50)          null,
   ItemID               int                  null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(50)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   Amount               money                null,
   PaymentID            int                  null,
   PaymentName          varchar(50)          null,
   DownPayRate          int                  null default 0,
   DownPayAmount        money                null,
   Loan                 money                null,
   TotalAmount          money                null,
   SalesID              int                  null,
   SalesName            varchar(20)          null,
   constraint PK_Z00_STOPUSE_OPERATION primary key (AgreementID)
)
go

/*==============================================================*/
/* Table: test1                                                 */
/*==============================================================*/
create table test1 (
   ID                   int                  identity,
   one                  int                  null,
   two                  int                  null,
   three                varchar(20)          null,
   four                 money                null,
   five                 int                  null default 0,
   six                  date                 null
)
go

/*==============================================================*/
/* Table: test2                                                 */
/*==============================================================*/
create table test2 (
   ID                   int                  identity,
   one                  int                  null,
   two                  int                  null,
   three                varchar(20)          null
)
go

