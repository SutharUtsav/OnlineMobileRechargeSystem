using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
    public partial class AdminPage : System.Web.UI.Page
    {
        DbContextClass db = new DbContextClass();
        public int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //for authentication
            if (Session["Id"] == null)
            {
                Response.Redirect("./Login.aspx");
            }else if(Int32.Parse(Session["Id"].ToString()) != 0 )
            {
                Session["Role"] = "NotAdmin";
                Response.Redirect("./Login.aspx");
            }
            //if ( Providerlist.SelectedValue == null && typelist.SelectedValue== null)
            //{
            //    var value1 =(from p in db.Providers select db.Providers.FirstOrDefault<Provider>().Id).ToString();
            //    Providerlist.SelectedIndex = Int32.Parse(value1);
            //    Providerlist.DataBind();
            //    var value2 = (from t in db.Types where t == db.Types.FirstOrDefault() select t.Id).ToString();
            //    typelist.SelectedIndex = Int32.Parse(value2);
            //    typelist.DataBind();
            //}

        }

      
    }
}