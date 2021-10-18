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
                Response.Redirect("./Login.aspx");
            }
            else
            {
                Label.Visible = false;
                
            }
           
            

            if (Session["Buy"] == null)
            {
                Panel1.Visible = false;
            }
            if (Session["Role"] != null)
            {
                Label.Visible = true;
            }
            activePlan.Visible = false;

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


            int id = Int32.Parse(Session["Id"].ToString());
            DateTime today = DateTime.Today;
            DbContextClass db = new DbContextClass();
            RechargeList rechargelist = (from row in db.Plans where row.user.Id == id && row.enddate >= today && row.Phonenumber == TextBoxNumber.Text select row.Recharge).SingleOrDefault();

            if (rechargelist == null)
            {
                Session["p_number"] = TextBoxNumber.Text;
                var val = Convert.ToInt32(DropDownListProvider.SelectedValue);
                String url = "packages.aspx?";
                url += "Id=" + DropDownListProvider.SelectedValue;
                url += "&tid=" + (((val - 1) * 6) + 1);
                Response.Redirect(url);
            }
            else
            {
                activePlan.Visible = true;
                
                    DateTime d = (from row in db.Plans where row.Recharge.Id == rechargelist.Id select row.enddate).FirstOrDefault();
                    if (d > today)
                    {
                        LabelEndDate.Text = "Your Plan will end after " + (d - today).Days.ToString() + " Days";
                        LabelProvider.Text = rechargelist.Provider.ProviderName.ToString();
                        LabelAmount.Text = " ₹ " +rechargelist.Amount.ToString();
                        LabelDatapack.Text = rechargelist.Datapack.ToString();
                        LabelSMSlimit.Text = rechargelist.SMSLimit.ToString();
                        LabelValidity.Text = rechargelist.validity.ToString() + " Days";
                    }
                
            }
        }
     

       

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            
            Session.RemoveAll();
            Response.Redirect("~/Login.aspx");
        }

        protected void ButtonCloseAlert_Click(object sender, EventArgs e)
        {
            Session["Buy"] = null;
            Response.Redirect("~/Home.aspx");
        }
    }
}