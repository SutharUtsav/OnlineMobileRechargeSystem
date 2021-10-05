using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("./login.aspx");
            }
            //else
            //{
            //    TextBoxNumber.Text = Session["phonenum"].ToString();
            //}
        }

        protected void ButtonProceed_Click(object sender, EventArgs e)
        {
             if (TextBoxNumber.Text == "")
            {
                Session["p_number"] = null;
            }
            else
            {
                Session["p_number"] = TextBoxNumber.Text;
            }
            var val = Convert.ToInt32(DropDownListProvider.SelectedValue);
            String url = "packages.aspx?";
            url += "Id=" + DropDownListProvider.SelectedValue;
            url += "&tid=" + (((val-1)*6)+1); 
            Response.Redirect(url);
        }

    }
}