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
    public partial class category : System.Web.UI.Page
    {
        public string constr = "Data Source=DESKTOP-JA2GBNT\\SQLEXPRESS;Initial Catalog=Printech;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!this.IsPostBack)
            //{
            //    BindGridView();
            //}

        }
        //private void BindGridView()
        //{
        //    SqlConnection con = new SqlConnection(constr);
        //    SqlCommand cmd = new SqlCommand("select * from category ", con);
        //   // DataTable dt = new DataTable();
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //   // da.Fill(dt);
        //    //GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}


        protected void addcat_Click(object sender, EventArgs e)
        {
            Response.Redirect("addCategory.aspx");
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("editcategory.aspx");
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "EditButton")
        //    {
        //        int index = Convert.ToInt32(e.CommandArgument);
        //        GridViewRow row = GridView1.Rows[index];
        //        Response.Redirect("~/editcategory.aspx?categoryid=" + row.Cells[0].Text);
        //    }
        //}

    }
}