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
            if (Session["Id"] == null)
            {
                Response.Redirect("./Login.aspx");
            }
            else
            {
                TextBoxNumber.Text = Session["PhoneNum"].ToString();
            }
        }

        protected void ButtonProceed_Click(object sender, EventArgs e)
        {
            Response.Redirect("./home.aspx");
        }

    }
}