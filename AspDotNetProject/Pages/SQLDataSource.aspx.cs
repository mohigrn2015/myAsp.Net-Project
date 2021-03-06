using AspDotNetProject.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject.Pages
{
    public partial class SQLDataSource : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserControl.InsertType = "SQL";
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            FileUpload up1 = (FileUpload)GridView1.Rows[e.RowIndex].FindControl("FileUpload1");
            string ImageName = ProductGateWay.GetImageName(id);
            DeleteExistingImg(ImageName);
            string fileURL = "~/Images/";
            string imageName = "";
            if (up1.HasFile)
            {
                imageName = up1.FileName;
                fileURL += imageName;
                up1.SaveAs(Server.MapPath(fileURL));
            }
            ProductGateWay.UpdateImgById(imageName, fileURL, id);
        }

        private void DeleteExistingImg(string imageName)
        {
            string path = Server.MapPath(@"~/Images/" + imageName);
            FileInfo fileObj = new FileInfo(path);
            if (fileObj.Exists)
            {
                fileObj.Delete();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
            string ImageName = ProductGateWay.GetImageName(id);
            DeleteExistingImg(ImageName);
        }
    }
}