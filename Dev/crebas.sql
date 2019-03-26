/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2017-04-07 15:46:07                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('V_UpInfo')
            and   type = 'V')
   drop view V_UpInfo
go

if exists (select 1
            from  sysobjects
           where  id = object_id('V_TransactionBase')
            and   type = 'V')
   drop view V_TransactionBase
go

if exists (select 1
            from  sysobjects
           where  id = object_id('V_TransDetail')
            and   type = 'V')
   drop view V_TransDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('V_SaleItemBase')
            and   type = 'V')
   drop view V_SaleItemBase
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AreaChange')
            and   type = 'U')
   drop table AreaChange
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
           where  id = object_id('DictPayment')
            and   type = 'U')
   drop table DictPayment
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
           where  id = object_id('DownPayRate')
            and   type = 'U')
   drop table DownPayRate
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
           where  id = object_id('SysUser')
            and   type = 'U')
   drop table SysUser
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransDetail')
            and   type = 'U')
   drop table TransDetail
go

if exists (select 1
            from  sysobjects
           where  id = object_id('TransMain')
            and   type = 'U')
   drop table TransMain
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Transactions')
            and   name  = 'Index_ContractCode'
            and   indid > 0
            and   indid < 255)
   drop index Transactions.Index_ContractCode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Transactions')
            and   type = 'U')
   drop table Transactions
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UpGroup')
            and   type = 'U')
   drop table UpGroup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UpSet')
            and   type = 'U')
   drop table UpSet
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

/*==============================================================*/
/* Table: AreaChange                                            */
/*==============================================================*/
create table AreaChange (
   ID                   int                  identity,
   TID                  int                  null,
   ContractCode         varchar(50)          null,
   ItemTypeName         varchar(50)          null,
   ItemNum              varchar(50)          null,
   TypeCode             int                  null,
   TypeName             varchar(50)          null,
   OrigPrice            money                null,
   OrigArea             decimal(18,2)        null,
   NewArea              decimal(18,2)        null,
   OrigAmount           money                null,
   NewAmount            money                null,
   DifferAmount         decimal(18,2)        null,
   ChangeDate           date                 null,
   MakeDate             date                 null,
   Maker                varchar(50)          null,
   constraint PK_AREACHANGE primary key (ID)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('AreaChange')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TypeCode')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'AreaChange', 'column', 'TypeCode'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1：面积变更
   2：预确权
   3：确权',
   'user', @CurrentUser, 'table', 'AreaChange', 'column', 'TypeCode'
go

/*==============================================================*/
/* Table: Customer                                              */
/*==============================================================*/
create table Customer (
   CustomerID           int                  identity,
   ProjectID            int                  null,
   CusName              varchar(50)          null,
   Phone1               varchar(50)          null,
   Phone2               varchar(50)          null,
   PID                  varchar(18)          null,
   Addr                 varchar(100)         null,
   CusType              int                  null,
   constraint PK_CUSTOMER primary key (CustomerID)
)
go

/*==============================================================*/
/* Table: DictItemType                                          */
/*==============================================================*/
create table DictItemType (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

/*==============================================================*/
/* Table: DictPayment                                           */
/*==============================================================*/
create table DictPayment (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

/*==============================================================*/
/* Table: DictReceiptType                                       */
/*==============================================================*/
create table DictReceiptType (
   Code                 int                  null,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
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
   Memo                 varchar(200)         null,
   State                varchar(1)           null default '1'
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
/* Table: DownPayRate                                           */
/*==============================================================*/
create table DownPayRate (
   ID                   int                  identity,
   Name                 varchar(50)          null,
   Memo                 varchar(200)         null
)
go

/*==============================================================*/
/* Table: Project                                               */
/*==============================================================*/
create table Project (
   ProjectID            int                  identity,
   ProjectName          varchar(100)         null,
   FirstParty           varchar(100)         null,
   BaseRate             decimal(18,2)        null,
   BottomPriceRate      decimal(18,2)        null,
   DownPayment          decimal(18,2)        null,
   Memo                 varchar(500)         null,
   CreateDate           datetime             null,
   State                varchar(10)          null,
   constraint PK_PROJECT primary key (ProjectID)
)
go

/*==============================================================*/
/* Table: Receipt                                               */
/*==============================================================*/
create table Receipt (
   ID                   int                  identity,
   TID                  int                  null,
   ContractCode         varchar(50)          null,
   Amount               money                null,
   RecDate              datetime             null,
   TypeCode             int                  null,
   TypeName             varchar(50)          null,
   SettleState          int                  null default 1,
   Memo                 varchar(200)         null,
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
   '1:',
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'TypeCode'
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
   '1：未结算
   2：已结算',
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
   '0：业务
   1：手工',
   'user', @CurrentUser, 'table', 'Receipt', 'column', 'Source'
go

/*==============================================================*/
/* Table: Role                                                  */
/*==============================================================*/
create table Role (
   RoleID               int                  identity,
   RoleName             varchar(50)          null
)
go

/*==============================================================*/
/* Table: SaleItem                                              */
/*==============================================================*/
create table SaleItem (
   ItemID               int                  identity,
   ProjectID            int                  null,
   ProjectName          varchar(200)         null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(50)          null,
   ItemType             int                  null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   SettleBaseCode       int                  null,
   SettleStandardCode   int                  null,
   SettleRate           decimal(18,2)        null default 0,
   BottomPrice          money                null default 0,
   BottomPriceType      bit                  null default 1,
   BottomPriceLimit     money                null default 0,
   BottomPriceRate      int                  null,
   SettleStandardAmount money                null,
   SettleStandardRate   decimal(18,2)        null,
   SpecialAmount        money                null default 0,
   Region               varchar(20)          null,
   Stage                int                  null,
   SaleSpecial          int                  null,
   SaleState            int                  null default 0,
   Memo                 varchar(200)         null,
   Property1            varchar(50)          null,
   Property2            varchar(50)          null,
   State                int                  null,
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
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SaleState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'SaleState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '0：未售
   1：认购
   2：签约
   3：结案',
   'user', @CurrentUser, 'table', 'SaleItem', 'column', 'SaleState'
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
/* Table: SettleDetail                                          */
/*==============================================================*/
create table SettleDetail (
   SDID                 int                  identity,
   SID                  int                  null,
   TID                  int                  null,
   ContractCode         varchar(50)          null,
   ContractDate         date                 null,
   BottomPrice          money                null default 0,
   DownPay              money                null default 0,
   Differ               money                null default 0,
   Loan                 money                null default 0,
   Receipt              money                null default 0,
   RecDate              date                 null,
   Commission           money                null default 0,
   Addition             money                null default 0,
   CommTotal            money                null default 0,
   constraint PK_SETTLEDETAIL primary key (SDID)
)
go

/*==============================================================*/
/* Table: SettleMain                                            */
/*==============================================================*/
create table SettleMain (
   SID                  int                  identity,
   TableName            varchar(200)         null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   SettlePeriod         varchar(20)          null,
   SettleDate           date                 null,
   TableMaker           varchar(50)          null,
   CheckDate            date                 null,
   Checker              varchar(50)          null,
   MakeDate             date                 null,
   Maker                varchar(50)          null,
   constraint PK_SETTLEMAIN primary key (SID)
)
go

/*==============================================================*/
/* Table: SysUser                                               */
/*==============================================================*/
create table SysUser (
   ID                   int                  identity,
   UserName             varchar(50)          null,
   UserPwd              varchar(50)          null,
   UserType             int                  null,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   RoleID               int                  null,
   RoleName             varchar(200)         null,
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
   1:管理员
   2 : 用户',
   'user', @CurrentUser, 'table', 'SysUser', 'column', 'UserType'
go

/*==============================================================*/
/* Table: TransDetail                                           */
/*==============================================================*/
create table TransDetail (
   TDID                 int                  identity,
   TID                  int                  null,
   ContractCode         varchar(50)          null,
   AgreementNum         varchar(100)         null,
   RowID                int                  null,
   ItemID               int                  null,
   ItemType             int                  null,
   ItemTypeName         varchar(50)          null,
   Building             varchar(20)          null,
   Unit                 varchar(20)          null,
   ItemNum              varchar(50)          null,
   Area                 decimal(18,2)        null,
   Price                money                null,
   Amount               money                null,
   constraint PK_TRANSDETAIL primary key (TDID)
)
go

/*==============================================================*/
/* Table: TransMain                                             */
/*==============================================================*/
create table TransMain (
   TID                  int                  not null,
   ContractCode         varchar(50)          null,
   ProjectID            int                  null,
   ProjectName          varchar(50)          null,
   CustomerID           int                  null,
   CustomerName         varchar(50)          null,
   OrigCustomerName     varchar(50)          null,
   ChangeNameDate       date                 null,
   ContractDate         date                 null,
   ReturnDate           date                 null,
   PayCode              int                  null,
   DownPayRate          int                  null default 0,
   DownPay              money                null,
   Loan                 money                null,
   TotalAmount          money                null,
   SalesID              int                  null,
   SalesName            varchar(50)          null,
   TransState           int                  null,
   IsRefer              bit                  null default 0,
   Memo                 varchar(2000)        null,
   MakeDate             datetime             null,
   Maker                varchar(50)          null,
   ExtField1            varchar(200)         null,
   ExtField2            varchar(200)         null,
   ExtField3            varchar(200)         null,
   ExtField4            varchar(200)         null,
   ExtField5            varchar(200)         null,
   ExtField6            char(10)             null,
   ExtField7            char(10)             null,
   ExtField8            char(10)             null,
   ExtField9            char(10)             null
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('TransMain')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TransState')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'TransMain', 'column', 'TransState'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1：认购
   2：签约
   3：退房
   4：更名???更名时，旧的签约业务是否需要更新',
   'user', @CurrentUser, 'table', 'TransMain', 'column', 'TransState'
go

/*==============================================================*/
/* Table: Transactions                                          */
/*==============================================================*/
create table Transactions (
   TID                  int                  identity,
   ContractCode         varchar(50)          null,
   OrigSalesID          int                  null,
   SettleState          int                  null default 1,
   State                int                  null default 1,
   constraint PK_TRANSACTIONS primary key (TID)
)
go

/*==============================================================*/
/* Index: Index_ContractCode                                    */
/*==============================================================*/
create index Index_ContractCode on Transactions (
ContractCode ASC
)
go

/*==============================================================*/
/* Table: UpGroup                                               */
/*==============================================================*/
create table UpGroup (
   UPID                 int                  null,
   ItemID               int                  null
)
go

/*==============================================================*/
/* Table: UpSet                                                 */
/*==============================================================*/
create table UpSet (
   UPID                 int                  identity,
   UpName               varchar(200)         null,
   ProjectID            int                  null,
   ProjectName          varchar(200)         null,
   UpBaseCode           int                  null,
   UpBaseName           varchar(50)          null,
   BaseRate             decimal(18,2)        null,
   BeginDate            date                 null,
   EndDate              date                 null,
   constraint PK_UPSET primary key (UPID)
)
go

/*==============================================================*/
/* Table: UpSettleDetail                                        */
/*==============================================================*/
create table UpSettleDetail (
   SDID                 int                  identity,
   SID                  int                  null,
   TID                  int                  null,
   ContractCode         varchar(50)          null,
   ContractDate         date                 null,
   Receipt              money                null default 0,
   UpSettleSum          money                null,
   SettleRate           decimal(18,2)        null,
   SettleAmount         money                null default 0,
   constraint PK_UPSETTLEDETAIL primary key (SDID)
)
go

/*==============================================================*/
/* Table: UpSettleMain                                          */
/*==============================================================*/
create table UpSettleMain (
   SID                  int                  identity,
   TableName            varchar(200)         null,
   ProjectID            int                  null,
   ProjectName          varchar(100)         null,
   SettlePeriod         varchar(20)          null,
   SettleDate           date                 null,
   TableMaker           varchar(50)          null,
   CheckDate            date                 null,
   Checker              varchar(50)          null,
   MakeDate             date                 null,
   Maker                varchar(50)          null,
   constraint PK_UPSETTLEMAIN primary key (SID)
)
go

/*==============================================================*/
/* Table: UpValue                                               */
/*==============================================================*/
create table UpValue (
   UPID                 int                  null,
   BeginValue           decimal(18,2)        null,
   EndValue             decimal(18,2)        null,
   UpRate               decimal(18,2)        null
)
go

/*==============================================================*/
/* View: V_SaleItemBase                                         */
/*==============================================================*/
create view V_SaleItemBase as
select  a.ItemID,ProjectID,ProjectName,Building,Unit,ItemNum,Area,Price,
a.SettleStandardAmount, SettleStandardRate, SpecialAmount,
ItemType, b.Name as TypeName,SaleState, c.Name as StateName,
d.Name as SettleBaseName, e.Name as SettleStandardName,a.SettleRate,
BottomPrice,BottomPriceRate,BottomPriceLimit
from SaleItem a 
left join DictItemType b on a.ItemType = b.Code
left join DictSaleState c on a.SaleState = c.Code
left join DictSettleBase d on a.SettleBaseCode = d.Code
left join DictSettleStandard e on a.SettleStandardCode = e.Code
go

/*==============================================================*/
/* View: V_TransDetail                                          */
/*==============================================================*/
create view V_TransDetail as
select a.tid, a.ContractCode,a.ProjectID,a.ContractDate, a.TransState,a.DownPayRate,a.DownPay, a.TotalAmount,
b.area, b.price, b.Amount,
c.ItemID,c.ItemType,c.SettleBaseCode,c.SettleStandardCode,c.SettleRate,c.SpecialAmount,
c.SettleStandardAmount, SettleStandardRate,
c.BottomPrice,c.BottomPriceLimit,c.BottomPriceRate 
from TransMain a
inner join [TransDetail] b on a.TID = b.TID and a.ContractCode = b.ContractCode
inner join [SaleItem] c on b.ItemID = c.ItemID
go

/*==============================================================*/
/* View: V_TransactionBase                                      */
/*==============================================================*/
create view V_TransactionBase as
select
   a.tid,
   a.OrigSalesID,
   a.ContractCode,
   b.ProjectID,
   ProjectName,
   b.CustomerID,
   b.ReturnDate,
   b.ExtField1,
   b.ExtField2,
   b.ExtField3,
   b.ExtField4,
   b.ExtField5,
   b.ExtField6,
   b.ExtField7,
   b.ExtField8,
   b.ExtField9,
   b.Memo,
   CustomerName,
   Phone1,
   Phone2,
   PID,
   Addr,
   ContractDate,
   ItemID,
   ItemType,
   ItemTypeName,
   Building,
   Unit,
   ItemNum,
   Area,
   Price,
   Amount,
   DownPay,
   DownPayRate,
   Loan,
   PayCode,
   TotalAmount,
   SalesID,
   SalesName,
   IsRefer,
   TransState
from
   Transactions a
   inner join TransMain b on a.TID = b.TID and a.ContractCode = b.ContractCode
   inner join TransDetail c on  a.TID = c.TID and a.ContractCode = c.ContractCode
   inner join Customer d on  b.CustomerID = d.CustomerID
go

/*==============================================================*/
/* View: V_UpInfo                                               */
/*==============================================================*/
create view V_UpInfo as
select 
a.UPID,
a.UpName,
a.ProjectID,
a.ProjectName,
a.UpBaseCode,
a.UpBaseName,
a.BaseRate,
a.BeginDate,
a.EndDate,
b.BeginValue,
b.EndValue,
b.UpRate,
c.ItemID 
 from UpSet a
inner join upvalue b on a.UPID = b.UPID
inner join UPGroup c on a.UPID = c.UPID
go

