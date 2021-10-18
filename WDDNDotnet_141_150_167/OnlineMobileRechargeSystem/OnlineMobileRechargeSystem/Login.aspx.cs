using OnlineMobileRechargeSystem.Models;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OnlineMobileRechargeSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Id"] != null)
            {
                if(Int32.Parse(Session["Id"].ToString()) == 0)
                {
                    Response.Redirect("~/AdminPage.aspx");

                }
                Response.Redirect("~/home.aspx");
            }
            EmailTextBox.Focus();
        }

        protected void SignInButton_Click(object sender, EventArgs e)
        {

            string strpass = encryptpass(PasswordTextBox.Text);
            DbContextClass db = new DbContextClass();

            //for Admin check
            if (EmailTextBox.Text == "admin@admin.com" && PasswordTextBox.Text == "admin")
            {
                Session["Role"] = null;
                Session["Id"] = 0;
                Response.Redirect("./AdminPage.aspx");
            }
            else
            {
                Users u = (from user in db.AllUsers where user.Email == EmailTextBox.Text.Trim() && user.Password == strpass select user).SingleOrDefault();
                if (u != null)
                {
                    Session["Role"] = null;
                    Session["Id"] = u.Id;
                    Session["Username"] = u.Username;
                    Session["PhoneNum"] = u.PhoneNum;
                    Response.Redirect("./home.aspx");

                }
                else
                {
                    InvalidErrorLabel.Text = "Invalid Email or Password";
                    this.InvalidErrorLabel.ForeColor = Color.Red;
                }
            }
        }

        private string encryptpass(string password)
        {
            string text = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            text = Convert.ToBase64String(encode);
            return text;

        }
    }
}