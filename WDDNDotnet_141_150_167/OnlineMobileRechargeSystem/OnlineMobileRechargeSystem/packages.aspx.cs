using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;

namespace OnlineMobileRechargeSystem
{
	public partial class packages : System.Web.UI.Page
	{
		static DbContextClass db = new DbContextClass();

		public IEnumerable<TypeofRecharge> List_p;
		public IEnumerable<RechargeList> List_r;

		protected void Page_Init(object sender, EventArgs e)
		{
			var value = Convert.ToInt32(Request.QueryString["Id"]);
			var value1 = Convert.ToInt32(Request.QueryString["tid"]);
			List_p = (from p in db.Types where p.provider.Id == value select p).ToList();
			List_r = (from p in db.RechargeList where (p.Type.Id == value1 && p.Provider.Id == value) select p).ToList();
		}
		protected void Page_Load(object sender, EventArgs e)
		{
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
			Response.Redirect("home.aspx");
		}

		protected void ButtonLogout_Click(object sender, EventArgs e)
		{
			Session.RemoveAll();
			Response.Redirect("./login.aspx");
		}
	}
}