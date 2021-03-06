using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace AspDotNetProject.Models
{
    public class Connection
    {
        public static string GetConnection()
        {
            string Constr = ConfigurationManager.ConnectionStrings["Product"].ConnectionString;
            return Constr;
        }
    }
}