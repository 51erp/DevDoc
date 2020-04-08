
select * from ContractMain where PaymentType = 4 and ProjectID = 12


select * from Receipt where ContractID = 840

select * from Installment where ContractID = 840

select * from ContractDetail where ContractID in (select ContractID from ContractMain where PaymentType = 4 and ProjectID = 12)




------------------
select a.ContractID, a.ContractNum, CustomerName, b.ItemTypeCode, b.ItemTypeName, CONVERT(varchar(10),SubscribeDate,120) SubscribeDate, SubscribeSalesID, SubscribeSalesName,  CONVERT(varchar(10),ContractDate,120) ContractDate, PaymentName,   b.ItemID, b.Building, b.Unit, b.ItemNum, b.Area, b.Price, b.Amount,  DownPayRate, DownPayAmount, Loan, TotalAmount,  SettleStandardCode, SettleBaseCode, SettleRate, SettleAmount, BottomPrice, BottomPriceLimit, BottomPriceRate  from ContractMain a  inner join  ContractDetail b on a.ContractID = b.ContractID  inner join SaleItem c on b.ItemID = c.ItemID where a.ContractDate <= '2018-12-31' and b.IsBind = 0 and a.ContractID in ( select Distinct ContractID from Receipt where SettleState = 0 and Convert(Varchar(10),RecDate,120) <= '2018-12-31' and ProjectID = 12 ) order by a.ContractID 

---------

select * from ContractMain where ContractID = 886

select * from Receipt where ContractID = 886

select * from Installment where ContractID = 886

select * from SettleDetail where ContractID = 886


-------------------------------------------------
@褚存 七月份有两个首付分期的客户，第二期付款没有结算是怎么回事呀

--查看
select * From Installment where ContractID = 880     

select * from SettleDetail where ContractID = 880     

select * from Receipt where contractid = 880  


-- ContractID = 840 范银环

update Installment set Settled = 28 where ID = 258

update SettleDetail set FirstSettle = 0 where ID = 330
update SettleDetail set FirstSettle = 0 where ID = 766



-- ContractID = 868 刘敏 刘永辉
update Installment set Settled = 31 where ID = 270

update SettleDetail set FirstSettle = 0 where ID = 284


-- ContractID = 878 张延哲 --OK



-- ContractID = 880 李洪源
update Installment set Settled = 31 where ID = 266

update SettleDetail set FirstSettle = 0 where ID = 288

-- ContractID = 886 闫新卫 --OK

-- ContractID = 2463 王雪琪 --OK






c sharp
 http://chs.gotdotnet.com/QuickStart/howto/default.aspx?url=/quickstart/howto/doc/Interop/Building_Samples_COM2NET.aspx

 Windows Forms FAQ(经典的FAQ)
 http://www.syncfusion.com/FAQ/Winforms/

 http://www.dotnet247.com/247reference/default.aspx

 http://www.codeproject.com/csharp/ 

 www.csharp-corner.com 

 www.aspxcn.com

 http://msdn.microsoft.com/msdnmag/issues/02/10/NETSerialComm/default.aspx


 http://www.aspfree.com/aspnet/Default.aspx
 http://asp.forumszone.com
 http://www.asp.net
 http://www.dotnetjunkies.com/
 http://www.aspxcn.com
 http://www.aspcn.com
 http://www.ourasp.net
 http://www.chinabs.net
 http://www.digital.com
 http://www.51dotnet.com/
 http://www.cndot.net/
 http://aspx.chinagz.net/
 http://www.c-sharpcorner.com
 http://www.aspcool.com
 http://www.gotdotnet.com
 http://www.dotnetbips.com

 http://www.aspxcn.com
 http://www.cndot.net/
 http://www.aspcn.com/
 http://www.51dotnet.com/
 http://www.aspx.net.cn/
 http://www.mycodes.net/

 http://www.dotnetwire.com
 http://www.fawcette.com/dotnetmag/

 http://www.asp.net
 http://www.chinaspx.com

 http://www.gotdotnet.com/team/compare/


 http://www.chinabs.net
 http://www.aspcool.com
 http://www.aspxcn.com

















//获取ID分组的DataTable：[dt_ID]  
select ID from Family group by ID

dt_ID.PrimaryKey = new DataColumn[] { dt_ID.Columns["ID"] };


for (int i=0; i < dt_ID.Rows.count; i++)
{

  //创建临时表 [dt_Temp]
  DataTable dt_Temp = new DataTable()
  dt_Temp.Columns.Add("ID", typeof(int));

  string fieldValues = dt_ID.ID;


  //获取相同ID的记录集 : [dt_Children]
  select ChildName, Age  from  Children  where ID = dt_ID.ID


  //动态创建字段，拼接字段值
  for (int j=0; j < dt_Children.Rows.count;  j++)
  {
    string childName= "ChildName" + j ;
    string age = "Age" + j;
    dt_Children .Columns.Add(childName, typeof(string));
    dt_Children .Columns.Add(age, typeof(int));

    fieldValues += "," + dt_Children.Rows[j]["ChildName"].ToString() + "," + dt_Children.Rows[j]["Age"].ToString()
  }

  //添加行，数据填充
  dt_Temp.Rows.Add(fieldValue.Split(','));


  dt_ID.Merge(dt_Temp, false, MissingSchemaAction.Add); //合并至主体表,相同字段合并
}  




        public DataSet ExecQryDataSet(string sql)
        {
            SqlConnection conn = new SqlConnection(connString);
            DataSet ds = new DataSet();
            try
            {
                conn.Open(); 
                SqlDataAdapter adp = new SqlDataAdapter(sql, conn);
                adp.Fill(ds);
            }
            catch(Exception ex)
            {
                Console.WriteLine("DB Err! " + ex.Message);
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                    conn.Close(); 
            }
            return ds;
        }













