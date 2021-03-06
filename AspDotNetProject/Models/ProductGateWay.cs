using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace AspDotNetProject.Models
{
    public class ProductGateWay
    {
        public static List<Products> GetProducts()
        {
            List<Products> list = new List<Products>();
            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT ProductId, ProductName, ShortDescription, LongDescription, EntryDate,Category.CategoryId, CategoryName,UnitPrice,ImageName, ImageFile FROM Products Join Category On Category.CategoryId =Products.CategoryId";
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    Products obj = new Products();
                    Categories obj1 = new Categories();
                    obj.ProductId = Convert.ToInt32(rdr["ProductId"].ToString());
                    obj.ProductName = rdr["ProductName"].ToString();
                    obj.ShortDescription = rdr["ShortDescription"].ToString();
                    obj.LongDescription = rdr["LongDescription"].ToString();
                    obj.EntryDate= Convert.ToDateTime( rdr["EntryDate"].ToString());
                    obj.CategoryId = Convert.ToInt32(rdr["CategoryId"].ToString());
                    obj1.CategoryName = rdr["CategoryName"].ToString();
                    obj.ImageFile = rdr["ImageFile"].ToString();
                    obj.ImageName = rdr["ImageName"].ToString();
                    obj.UnitPrice = Convert.ToDecimal(rdr["UnitPrice"].ToString());
                    list.Add(obj);
                }
            }
            return list;
        }

        public static void SaveProduct(string ProductName, string ShortDescription, string LongDescription, DateTime EntryDate, int CategoryId, string ImageFile, string ImageName, decimal UnitPrice)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into Products(ProductName, ShortDescription, LongDescription,EntryDate, CategoryId, ImageFile, UnitPrice, ImageName) Values (@ProductName,@ShortDescription, @LongDescription,@EntryDate, @CategoryId, @ImageFile, @UnitPrice, @ImageName)";
                cmd.Parameters.AddWithValue("@ProductName", ProductName);
                cmd.Parameters.AddWithValue("@ShortDescription", ShortDescription);
                cmd.Parameters.AddWithValue("@LongDescription", LongDescription);
                cmd.Parameters.AddWithValue("@EntryDate", EntryDate);
                cmd.Parameters.AddWithValue("@CategoryId", CategoryId);
                
                cmd.Parameters.AddWithValue("@ImageFile", ImageFile);
                cmd.Parameters.AddWithValue("@UnitPrice", UnitPrice);
                cmd.Parameters.AddWithValue("@ImageName", ImageName);
                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void DeleteProduct(int ProductId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "DELETE FROM Products WHERE ProductId=" + ProductId;

                con.Open();
                cmd.ExecuteNonQuery();
            }
        }
        public static void UpdateProduct(int ProductId, string ProductName, string ShortDescription, string LongDescription, DateTime EntryDate, int CategoryId, string ImageFile, decimal UnitPrice, string ImageName)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE Products SET ProductName=@ProductName, ShortDescription=@ShortDescription, LongDescription=@LongDescription, EntryDate=@EntryDate, CategoryId=@CategoryId, UnitPrice=@UnitPrice WHERE ProductId=" + ProductId;
                cmd.Parameters.AddWithValue("@ProductName", ProductName);
                cmd.Parameters.AddWithValue("@ShortDescription", ShortDescription);
                cmd.Parameters.AddWithValue("@LongDescription", LongDescription);
                cmd.Parameters.AddWithValue("@EntryDate", EntryDate);
                cmd.Parameters.AddWithValue("@CategoryId", CategoryId);
                cmd.Parameters.AddWithValue("@UnitPrice", UnitPrice);
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }
        public static void UpdateImgById(string ImageName, string ImageFile, int ProductId)
        {

            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "UPDATE Products SET ImageName=@ImageName, ImageFile=@ImageFile WHERE ProductId=" + ProductId;
                cmd.Parameters.AddWithValue("@ImageName", ImageName);
                cmd.Parameters.AddWithValue("@ImageFile", ImageFile);
                cmd.Parameters.AddWithValue("@ProductId", ProductId);
                con.Open();
                cmd.ExecuteNonQuery();

            }

        }
        public static string GetImageName(int ProductId)
        {
            string imageName = "";
            using (SqlConnection con = new SqlConnection(Connection.GetConnection()))
            {
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT ImageName FROM Products Where ProductId=" + ProductId;
                con.Open();
                imageName = cmd.ExecuteScalar().ToString(); 
            }
            return imageName;
        }
    }
}