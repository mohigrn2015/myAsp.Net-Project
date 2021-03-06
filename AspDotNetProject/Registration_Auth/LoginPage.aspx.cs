using AspDotNetProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject.Registration_Auth
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUserName.Text;
            string password = txtPassword.Text;
            bool userCount = AuthenticateUser(username, password);
            if (userCount)
            {
                FormsAuthentication.RedirectFromLoginPage(username, false);
                Response.Redirect("~/Pages/deafult.aspx");
            }
            else
            {
                lblMessage.Text = "Invalid User";
            }
        }

        private bool AuthenticateUser(string username, string password)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = new SqlCommand("spAuthenticateUser", con);
                cmd.CommandType = CommandType.StoredProcedure;
                string Encryptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
                SqlParameter pass = new SqlParameter("@Password", Encryptedpassword);
                SqlParameter UserName = new SqlParameter("@UserName", username);
                cmd.Parameters.Add(UserName);
                cmd.Parameters.Add(pass);
                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                return ReturnCode == 1;

            }
        }

        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            //Label1.Text = DateTime.Now.ToString("hh:mm:ss tt");
        }
    }
    
}