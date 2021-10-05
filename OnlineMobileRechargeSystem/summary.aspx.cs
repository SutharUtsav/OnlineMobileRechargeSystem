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
        public DateTime start;
        public DateTime end;

        protected void Page_Load(object sender, EventArgs e)
        {
            var value = Convert.ToInt32(Request.QueryString["Id"]);
            r = (from p in db.RechargeList where ( p.Id == value) select p).FirstOrDefault();
            var valid = Convert.ToInt32(r.validity);
            start = DateTime.Now;
            TimeSpan time = new TimeSpan(valid, 0, 0, 0);
            end = start.Add(time);
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
                user = user
            };
            db.Plans.Add(a);
            db.SaveChanges();
            Response.Redirect("./home.aspx");

        }
    }
}