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
    public partial class editcategory : System.Web.UI.Page
    {
        public string cnstring = "Data Source=desktop-ja2gbnt\\sqlexpress;Initial Catalog=Printech;Integrated Security=True";
        //string categoryId = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            //categoryId = Convert.ToString(Request.QueryString["categoryid"]);
            //if (!IsPostBack)
            //{
            //    BindTextBoxvalues();
            //}

        }

        //private void BindTextBoxvalues()
        //{
            
        //    SqlConnection con = new SqlConnection(cnstring);
        //    SqlCommand cmd = new SqlCommand("select * from category where categoryid=" + categoryId, con);
        //    DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    da.Fill(dt);
        //    txtcatid.Text = dt.Rows[0][0].ToString();
        //    txtCategory.Text = dt.Rows[0][1].ToString();
        //}

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx");
        }

        protected void update_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string update = "update category set categoryname='" + txtCategory.Text.ToString() +
                "' where categoryid='" + txtcatid.Text.ToString() + "';";
                SqlCommand cmd = new SqlCommand(update, con);
                cmd.ExecuteNonQuery();
                GridView1.DataBind();
            }
            categoryUpdate.Text = "Data updated successfully";
            con.Close();
           
        }

       
    }
}