using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ap_project
{
    public partial class addproduct : System.Web.UI.Page
    {
        public string cnstring = "Data Source=desktop-ja2gbnt\\sqlexpress;Initial Catalog=Printech;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string a = "insert into product (productid,productname,salesprice,availablequantity,categoryname)values ('" + txtcatid.Text.ToString() + "','"
                                    + txtproname.Text.ToString() + "','" + salesPrice.Text.ToString() + "','" + avaquantity.Text.ToString() + "','"
                                    + catname.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                productSaved.Text = "Data added successfully";

            }

        }
        
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("editproduct.aspx");
        }
    }
}
