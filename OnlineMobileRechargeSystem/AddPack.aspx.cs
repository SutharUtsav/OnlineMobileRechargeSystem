using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
    
    public partial class AddPack : System.Web.UI.Page
    {
        DbContextClass db = new DbContextClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            var type = from t in db.Types where t.provider == db.Providers.FirstOrDefault() select t.RechargeType;
            DropDownList2.DataSource = type.ToList();
            DropDownList2.DataBind();
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var value = DropDownList1.SelectedValue;
            var type = from t in db.Types where t.provider.ProviderName == value select t.RechargeType;
            DropDownList2.DataSource = type.ToList();
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int am = Int32.Parse(amount.Text.Trim());
            var provider = (Provider)(from p in db.Providers where p.ProviderName == DropDownList1.SelectedValue select p).FirstOrDefault();
            
            var type = (TypeofRecharge)(from t in db.Types where t.RechargeType == DropDownList2.SelectedValue && t.provider.ProviderName == DropDownList1.SelectedValue select t).FirstOrDefault();
            RechargeList r = new RechargeList
            {
                Amount = am,
                Datapack = data.Text.Trim(),
                SMSLimit = smslimit.Text.Trim(),
                validity = validity.Text.Trim(),
                Voice = voice.Text.Trim(),
                Provider = provider,
                Type = type
            };
            db.RechargeList.Add(r);
            db.SaveChanges();
            Response.Redirect("./AdminPage.aspx");
        }
    }
}