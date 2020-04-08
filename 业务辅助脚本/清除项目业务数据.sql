select * from Receipt where ProjectID = 10 

select *  from ContractDetail a, ContractMain b where a.ContractID = b.ContractID and b.ProjectID = 10

select * from SubscribeDetail a, SubscribeMain b where a.SubscribeID = b.SubScribeID and b.ProjectID = 10


select * from ContractMain  where ProjectID = 10

select * from SubscribeMain  where ProjectID = 10


select a.* from SaleItem a, ContractMain b, ContractDetail c where a.ItemID = c.ItemID and b.ContractID = c.ContractID and b.ProjectID = 1 and b.Import = 164101

-----------------------------------------------------------
delete from Receipt where ProjectID = 10 

delete ContractDetail from ContractDetail a, ContractMain b where a.ContractID = b.ContractID and b.ProjectID = 10

delete SubscribeDetail from SubscribeDetail a, SubscribeMain b where a.SubscribeID = b.SubScribeID and b.ProjectID = 10


delete from ContractMain  where ProjectID = 10

delete from SubscribeMain  where ProjectID = 10



update SaleItem set SaleStateCode = 1, SaleStateName = '待售', 
PayModeID = null, PayModeName = Null, PayTypeCode = null, PayTypeName = null, 
SettleStandardCode = null, SettleStandardName = null, SettleBaseCode = null, SettleBaseName = null  where Projectid = 10

------------------------------------------------------------------------------------------------------

--恢复房源销售状态
update SaleItem set SaleStateCode = 1, SaleStateName = '待售', 
PayModeID = null, PayModeName = Null, PayTypeCode = null, PayTypeName = null, 
SettleStandardCode = null, SettleStandardName = null, SettleBaseCode = null, SettleBaseName = null  
from SaleItem a, ContractMain b, ContractDetail c where a.ItemID = c.ItemID and b.ContractID = c.ContractID 
and b.ProjectID = 1 and b.Import = 164101


--删除收款记录
delete Receipt  from Receipt a, ContractMain b where a.ContractID = b.ContractID  and  a.ProjectID = 1 and b.Import = 164101

--删除签约明细
delete ContractDetail from ContractDetail a, ContractMain b where a.ContractID = b.ContractID and b.ProjectID = 1 and b.Import = 164101

--删除认购明细
delete SubscribeDetail from SubscribeDetail a, SubscribeMain b where a.SubscribeID = b.SubScribeID and b.ProjectID = 1 and b.Import = 164101

--删除签约主表
delete from ContractMain  where ProjectID = 1 and Import = 164101

--删除认购主表
delete from SubscribeMain  where ProjectID = 1 and Import = 164101








