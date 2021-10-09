using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
    public partial class AddProvider : System.Web.UI.Page
    {
        static DbContextClass db = new DbContextClass();
        public IEnumerable<Provider> List_p = (from p in db.Providers select p).ToList();
        public int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //for authentication
            if (Session["Id"] == null)
            {
                Response.Redirect("./Login.aspx");
            }
            else if (Int32.Parse(Session["Id"].ToString()) != 0)
            {
                Response.Redirect("./Login.aspx");
            }
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var input = providername.Text.Trim();
            if(input != "")
            {
                string[] Arr;
                Arr = new string[5] { "unlimited", "recomanded", "combo", "Best Offer", "others" };
                Provider p = new Provider
                {
                    ProviderName = providername.Text
                };
                db.Providers.Add(p);
                db.SaveChanges();
                for(int i = 0; i < Arr.Length; i++)
                {
                    TypeofRecharge t = new TypeofRecharge
                    {
                        RechargeType = Arr[i],
                        provider = p
                    };
                    db.Types.Add(t);
                    db.SaveChanges();
                }
                
                Response.Redirect("./AddProvider.aspx");

            }
            else
            {
                Label1.Visible = true;
                Label1.Text = "*Please Enter Provider Name";
            }
            
                
            
            
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

        protected void Delete_Click(object sender, EventArgs e)
        {

        }
    }
}