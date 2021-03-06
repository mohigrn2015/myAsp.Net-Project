using AspDotNetProject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject.Report
{
    public partial class viewReport1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReport_Click(object sender, EventArgs e)
        {
            var data = ProductGateWay.GetProducts();
            Session["ReportData"] = data;
            Response.Redirect("ReportViewer.aspx");
        }
    }
}