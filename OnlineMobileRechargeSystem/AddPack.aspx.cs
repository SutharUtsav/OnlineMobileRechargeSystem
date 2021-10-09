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
            //for authentication
            if (Session["Id"] == null)
            {
                Response.Redirect("./Login.aspx");
            }
            else if (Int32.Parse(Session["Id"].ToString()) != 0)
            {
                Session["NotAdmin"] = true;
                Response.Redirect("./Login.aspx");
            }
            if(DropDownList2.SelectedValue.ToString() == "")
            {
                var type = from t in db.Types where t.provider == db.Providers.FirstOrDefault() select t.RechargeType;
                DropDownList2.DataSource = type.ToList();
                DropDownList2.DataBind();
            }
           
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            var value = DropDownList1.SelectedValue.ToString();
            var type = from t in db.Types where t.provider.ProviderName.ToString() == value select t.RechargeType;
            DropDownList2.DataSource = type.ToList();
            DropDownList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int am = Int32.Parse(amount.Text.Trim());
            var provider = (Provider)(from p in db.Providers where p.ProviderName == DropDownList1.SelectedValue select p).FirstOrDefault();
            System.Diagnostics.Debug.WriteLine(DropDownList2.SelectedValue.ToString());
            TypeofRecharge type = (from t in db.Types where t.provider.ProviderName == DropDownList1.SelectedValue.ToString() && t.RechargeType == DropDownList2.SelectedValue.ToString()  select t).FirstOrDefault();
            RechargeList r = new RechargeList
            {
                Amount = am,
                Datapack = data.Text.Trim(),
                SMSLimit = smslimit.Text.Trim(),
                validity = Int32.Parse(validity.Text.Trim()),
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