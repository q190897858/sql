select
r.BUGUID, 
r.BUName,
r.ParentProjGUID,
r.ParentProjName,
r.ProjGUID,
r.ProjName,
r.BldGUID,
r.BldName,
r.Unit,
r.RoomInfo,
r.ProductTypeGUID,
r.ProductTypeName,
r.HxName,
t.OQsDate,
isnull(t.CCstAllName,t.OCstAllName) as CstAllName,
isnull(t.CCstAllTel,t.OCstAllTel) as CstAllTel,
t.OZygw,
isnull(t.CZygw,t.OZygw) as Zygw,
r.Status,
r.BldArea,
r.TnArea,
t.yjfDate,
r.Total,
r.BldPrice,
t.CCjTotal,
t.CCjRoomBldPrice,
t.CQsDate,
t.CNetQsDate,
isnull(t.CPayForm,t.OPayForm) as PayForm,
isnull(t.CDiscountRemark,t.ODiscountRemark) as DiscountRemark,
t.ssdj,
t.Yssf,
t.Sssf,
isnull(t.CAjTotal,t.OAjTotal) as AjTotal,
isnull(t.CAjBank,t.OAjBank) as Ajbank,
isnull(t.CGjjTotal,t.OGjjTotal) as GjjTotal,
isnull(t.CGjjBank,t.OGjjBank) as GjjBank,
isnull(t.CAddress,t.OAddress) as Address,
r.FangPanTime,
r.XxCode,
r.XxDate,
t.CAgreementNo
 from 
 data_wide_s_Room r
 left join 
 data_wide_s_Trade t on r.RoomGUID=t.RoomGUID
