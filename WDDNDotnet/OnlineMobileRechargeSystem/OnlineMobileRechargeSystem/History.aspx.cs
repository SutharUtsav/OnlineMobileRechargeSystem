using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
    public partial class History : System.Web.UI.Page
    {
        public DbContextClass db = new DbContextClass();
        public IEnumerable<ActivePlan> List_h;
        int i = 0;

            protected void Page_Init(object sender, EventArgs e)
            {
                if(Session["id"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                int id = Int32.Parse(Session["Id"].ToString());
                var history = (from h in db.Plans where h.user.Id == id select h).ToList();
                List_h = history;
            }
            protected void Page_Load(object sender, EventArgs e)
            {
                

            }

    }
}