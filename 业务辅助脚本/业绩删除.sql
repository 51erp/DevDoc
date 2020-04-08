select * from SettleMain

--delete  from PerformanceDetail where SettleID = 28

--update SettleMain set Performance  = 0 where SettleID = 28

select ID, SettleID, ContractID, ItemTypeCode, ItemTypeName, SubscribeDate, SubscribeSalesID,SubscribeSalesName, ReceiptDate, SalesID, SalesName, RecSettleTotal, FirstSettle from SettleDetail where SettleID = 28


select * from Sales where ProjectID = 12


select * from JobTrack where SalesID in (select SalesID from Sales where ProjectID = 12)


select SalesID, SalesName from JobTrack where JobType = 'Ö÷¹Ü' and DeptID = 49 and ((BeginDate <= '2018-11-28 0:00:00' and EndDate > '2018-11-28 0:00:00') or (BeginDate <= '2018-11-28 0:00:00' and EndDate is null))

select * from PerformanceDetail where SettleID = 28