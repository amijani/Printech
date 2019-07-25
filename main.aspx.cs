using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ap_project
{
    public partial class main : System.Web.UI.Page
    {
        public string cnstring = "Data Source=desktop-ja2gbnt\\sqlexpress;Initial Catalog=Printech;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

           
        }

        protected void addcategory_Click(object sender, EventArgs e)
        {
            Response.Redirect("addCategory.aspx");
        }

        protected void addproduct_Click(object sender, EventArgs e)
        {
            Response.Redirect("addproduct.aspx");
        }
    }
}