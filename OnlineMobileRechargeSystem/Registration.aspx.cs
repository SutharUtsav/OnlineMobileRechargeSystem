using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OnlineMobileRechargeSystem.Models;
using System.ComponentModel;

namespace OnlineMobileRechargeSystem
{
    public partial class Registration : System.Web.UI.Page
    {
        private string encryptpass(string password)
        {
            string text = "";
            byte[] encode = new byte[password.Length];
            encode = Encoding.UTF8.GetBytes(password);
            text = Convert.ToBase64String(encode);
            return text;

        }

        protected void Page_Load(object sender, EventArgs e)
        {
            UsernameTextBox.Focus();
        }
        protected void Submit_Button_Click(object sender, EventArgs e)
        {

            DbContextClass db = new DbContextClass();
            string strpass = encryptpass(PasswordTextBox.Text);
            var result = (from row in db.AllUsers where row.Email == EmailTextBox.Text.Trim() select row).ToList();
            if (result.Count() == 0)
            {
                if (ModelState.IsValid)
                {

                    Users user = new Users
                    {
                        Email = EmailTextBox.Text.Trim(),
                        Password = strpass,
                        PhoneNum = PhoneNumTextBox.Text.Trim(),
                        Username = UsernameTextBox.Text
                    };
                    db.AllUsers.Add(user);
                    db.SaveChanges();
                    Session["Id"] = user.Id;
                    Session["Username"] = user.Username;
                    Session["PhoneNum"] = user.PhoneNum;
                    Response.Redirect("./home.aspx");

                }
                Response.Redirect("./Registration.aspx");
            }
            else
            {
                EmailExistLabel.Text = "Email Already Exist";
            }

        }
    }
}