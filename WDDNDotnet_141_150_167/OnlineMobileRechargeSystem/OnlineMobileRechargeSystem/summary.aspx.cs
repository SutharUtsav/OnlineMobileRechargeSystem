using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
    public partial class summary : System.Web.UI.Page
    {
        static DbContextClass db = new DbContextClass();
        public RechargeList r;
        public Users user;
        public DateTime start;
        public DateTime end;

        protected void Page_Load(object sender, EventArgs e)
        {
            var value = Convert.ToInt32(Request.QueryString["Id"]);
            Int32 val = Convert.ToInt32(Session["Id"].ToString());
            r = (from p in db.RechargeList where (p.Id == value) select p).FirstOrDefault();
            user = (from u in db.AllUsers where u.Id == val select u).FirstOrDefault();
            var valid = Convert.ToInt32(r.validity);
            start = DateTime.Now;
            TimeSpan time = new TimeSpan(valid, 0, 0, 0);
            end = start.Add(time);
            if (Session["p_number"] == null)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('please enter mobile number')", true);
                Response.Redirect("home.aspx");
            }
            else
            {
                upperlabel.Text = (string)Session["p_number"];
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Int32 val = Convert.ToInt32(Session["Id"].ToString());
            Users user = (from u in db.AllUsers where u.Id == val select u).FirstOrDefault();
            ActivePlan a = new ActivePlan
            {
                startdate = start,
                enddate = end,
                Recharge = r,
                Phonenumber= Session["p_number"].ToString(),
                user = user
            };
            db.Plans.Add(a);
            db.SaveChanges();
            Session["Buy"] = 1;
            Response.Redirect("./home.aspx");

        }

        protected void ButtonLogout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/login.aspx");  
        }
    }
}