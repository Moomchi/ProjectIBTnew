using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectIBTnew.wwwroot.html
{
    public partial class userLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from userTable WHERE username='"
                + user.Text.Trim() + "' AND password='" + password.Text.Trim() + "'", con);

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["username"] = dr.GetValue(0).ToString();
                    Session["role"] = "user";
                    Session["status"] = "Active";
                }
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid ');</script>");
            }
        }
    }
}