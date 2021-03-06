using AspDotNetProject.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetProject
{
    public partial class UserControl : System.Web.UI.UserControl
    {
        public string InsertType = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.Visible = false;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (HiddenFieldImageName.Value == null && HiddenFieldImageFile.Value == null)
            {
                lblMessage.Text = "Choose an Image First...";
            }
            else
            {
                if (InsertType == "SDS")
                {
                    Products obj = new Products();
                    obj.ProductName = txtProductName.Text;
                    obj.ShortDescription = txtShortDescription.Text;
                    obj.LongDescription = txtLongDescription.Text;
                    obj.EntryDate = Convert.ToDateTime(txtDate.Text);
                    obj.CategoryId = Convert.ToInt32(DropDownList1.SelectedValue);
                    obj.CategoryName = DropDownList1.SelectedValue;
                    obj.ImageFile = HiddenFieldImageName.Value;
                    obj.ImageName = HiddenFieldImageFile.Value;
                    obj.UnitPrice = Convert.ToDecimal(txtUnitPrice.Text);
                    ProductGateWay.SaveProduct(obj.ProductName, obj.ShortDescription, obj.LongDescription, obj.EntryDate, obj.CategoryId, obj.ImageFile, obj.ImageName, obj.UnitPrice);
                    Response.Redirect("SQLDataSource.aspx");
                }
                else
                {
                    Products obj = new Products();
                    //Categories obj1 = new Categories();
                    obj.ProductName = txtProductName.Text;
                    obj.ShortDescription = txtShortDescription.Text;
                    obj.LongDescription = txtLongDescription.Text;
                    obj.EntryDate =Convert.ToDateTime( txtDate.Text);
                    obj.CategoryId = Convert.ToInt32(DropDownList1.SelectedValue);
                    obj.CategoryName = DropDownList1.SelectedValue;
                    obj.ImageFile = HiddenFieldImageName.Value;
                    obj.ImageName = HiddenFieldImageFile.Value;
                    obj.UnitPrice = Convert.ToDecimal(txtUnitPrice.Text);
                    ProductGateWay.SaveProduct(obj.ProductName, obj.ShortDescription, obj.LongDescription, obj.EntryDate, obj.CategoryId, obj.ImageFile, obj.ImageName, obj.UnitPrice);
                    Response.Redirect("ObjectDataPage.aspx");
                }



            }
        }

        protected void btnView_Click(object sender, EventArgs e)
        {
            if (FileUpload2.PostedFile != null)
            {
                string fileName = Path.GetFileName(FileUpload2.PostedFile.FileName);
                HiddenFieldImageFile.Value = fileName;
                string filePath = "~/Images/" + fileName;
                HiddenFieldImageName.Value = filePath;
                FileUpload2.SaveAs(Server.MapPath(filePath));
                this.Image1.ImageUrl = filePath;
            }
            else
            {
                lblMessage.Text = "Choose an Image First...";
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;
        }

        protected void UpdateTimer_Tick(object sender, EventArgs e)
        {
            //Label1.Text = DateTime.Now.ToString("hh:mm:ss tt");
        }
    }
}