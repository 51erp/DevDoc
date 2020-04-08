--以签约ID为条件
select * from ContractMain where ProjectID = 12 and ReturnDate is not null and PaymentType  = 4

--房屋销售状态（保证为待售状态）
update  SaleItem set SaleStateCode = 3, SaleStateName = '签约'  from ContractMain a, ContractDetail b, SaleItem c  where a.ContractID = b.ContractID and b.itemid = c.itemid and  a.ContractID = 886

--删除退款记录（未结算）
delete Receipt from Receipt a, ContractMain b  where a.ContractID = b.ContractID  and TypeCode = 6 and a.ContractID = 886


--置空退房日期、退款日期
update ContractMain set ReturnDate = null, RefundDate = null where ContractID = 886

--删除退房记录
delete ItemReturn where AgreementID = 886