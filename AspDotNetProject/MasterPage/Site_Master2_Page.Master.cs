using AspDotNetProject.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject.MasterPage
{
    public partial class Site_Master2_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // LoadNavMenu();
        }
        private void LoadNavMenu()
        {
            //using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            //{
            //    SqlDataAdapter da = new SqlDataAdapter("spGetMenuData", con);
            //    da.SelectCommand.CommandType = CommandType.StoredProcedure;
            //    DataSet ds = new DataSet();
            //    da.Fill(ds);
            //    ds.Relations.Add("ChildRows", ds.Tables[0].Columns["Id"], ds.Tables[1].Columns["ParentId"]);
            //    foreach (DataRow item in ds.Tables[0].Rows)
            //    {
            //        MenuItem mitem = new MenuItem();
            //        mitem.Text = item["MenuText"].ToString();
            //        mitem.NavigateUrl = item["NavUrl"].ToString();
            //        DataRow[] labelTwoDataRow = item.GetChildRows("ChildRows");
            //        foreach (DataRow mitem2 in labelTwoDataRow)
            //        {
            //            MenuItem childItem = new MenuItem();
            //            childItem.Text = mitem2["MenuText"].ToString();
            //            childItem.NavigateUrl = mitem2["NavUrl"].ToString();
            //            mitem.ChildItems.Add(childItem);
            //        }
            //        //Menu1.Items.Add(mitem);
            //    }
            //}

        }
    }
}