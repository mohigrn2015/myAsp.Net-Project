using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject.Report
{
    public partial class ReportViewer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["ReportData"] != null)
            {
                var list = Session["ReportData"];
                ProductInformations rpt = new ProductInformations();
                rpt.SetDataSource(list);
                CrystalReportViewer1.ReportSource = rpt;
            }
        }
    }
}