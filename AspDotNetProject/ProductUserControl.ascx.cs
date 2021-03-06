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

namespace AspDotNetProject
{
    public partial class ProductUserControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
                {
                    SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    SqlParameter userName = new SqlParameter("@UserName", txtName.Text);
                    string encriptedpassword = FormsAuthentication.HashPasswordForStoringInConfigFile(txtPassword.Text, "SHA1");
                    SqlParameter password = new SqlParameter("@Password", encriptedpassword);
                    SqlParameter email = new SqlParameter("@Email", txtEmail.Text);
                    
                    cmd.Parameters.Add(userName);
                    cmd.Parameters.Add(password);
                    cmd.Parameters.Add(email);
    
                    con.Open();
                    int returnCode = (int)cmd.ExecuteScalar();
                    if (returnCode == -1)
                    {
                        lblMessage.Text = "User Already Exist";
                    }
                    else
                    {
                        Response.Redirect("LoginPage.aspx");
                    }
                }
            }
        }
    }
}