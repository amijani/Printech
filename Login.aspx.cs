using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Printech_Project
{
    public partial class Login : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-JA2GBNT\\SQLEXPRESS;Initial Catalog=Printech;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lgn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string a = "insert into login (username,password)values ('" + username.Text.ToString() + "','"
                                    + password.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                Response.Write("Data inserted Successfully");
                Response.Redirect("main.aspx");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
    }
}