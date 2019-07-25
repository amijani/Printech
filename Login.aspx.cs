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
            this.username.Focus();
        }
        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void lgn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            string a = "select count(1) from registration where username=@username AND password=@password";
            SqlCommand sqlcmd = new SqlCommand(a, con);
            sqlcmd.Parameters.AddWithValue("@username", username.Text.Trim());
            sqlcmd.Parameters.AddWithValue("@password", password.Text.Trim());
            int count = Convert.ToInt32(sqlcmd.ExecuteScalar());
            if (count == 1)
            {
                Session["username"] = username.Text.Trim();
                Response.Redirect("main.aspx");
            }
            else
            {
                //code to check whether username and password don't exist
            }
        }

        
    }
}