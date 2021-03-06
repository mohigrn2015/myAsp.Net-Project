using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspDotNetProject.Models
{
    public class Products
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string ShortDescription { get; set; }
        public string LongDescription { get; set; }
        public int CategoryId { get; set; }
        public DateTime EntryDate { get; set; }
        public string ImageFile { get; set; } 
        public string ImageName { get; set; }
        public string CategoryName { get; set; }
        public decimal UnitPrice { get; set; }  
    }
}