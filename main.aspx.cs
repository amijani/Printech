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
            {
                string selectQuery = "select c.categoryname,count(p.categoryname) from category c,product p where c.categoryname=p.categoryname GROUP by c.categoryname";
                SqlConnection con = new SqlConnection(cnstring);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = selectQuery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                gridview1.DataSource = ds;
                gridview1.DataBind();
                con.Close();
            }

            string selectQuery1 = "select categoryname,productname,availablequantity from product";
            SqlConnection con1 = new SqlConnection(cnstring);
            con1.Open();
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = selectQuery1;
            cmd1.Connection = con1;
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            sda.Fill(ds1);
            gridview3.DataSource = ds1;
            gridview3.DataBind();

            con1.Close();
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