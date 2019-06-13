using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BotDetect;
using BotDetect.Web.UI;



namespace Printech_Project
{
    public partial class Signup : System.Web.UI.Page
    {
        public string cnstring = "Data Source=DESKTOP-JA2GBNT\\SQLEXPRESS;Initial Catalog=Printech;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cnstring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {

                string a = "insert into registration (userid,firstname,lastname,username,password)values ('" + userid.Text.ToString() + "','"
                                    + fname.Text.ToString() + "','" + lname.Text.ToString() + "','" + uname.Text.ToString() + "','"
                                    + pwd.Text.ToString() + "')";
                SqlCommand cmd = new SqlCommand(a, con);
                cmd.ExecuteNonQuery();
                Response.Write("Data inserted Successfully");
                Response.Redirect("login.aspx");

            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bool ishuman = CaptchaBox.Validate(textCaptcha.Text);
            textCaptcha.Text = null;
            if (!ishuman)
            {
                Labelmsg.ForeColor = System.Drawing.Color.Red;
                Labelmsg.Text = "InValid";
            }
            else
            {
                Labelmsg.ForeColor = System.Drawing.Color.Green;
                Labelmsg.Text = "Valid";
            }


        }

       
    }
}

