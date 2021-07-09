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
    public partial class Register : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(strcon);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlCommand cmd = new SqlCommand("SELECT * from userTable WHERE username='"
                + username.Text.Trim()+ "'", con);
            var result = cmd.ExecuteScalar();
            if (result == null) 
            {
                cmd = new SqlCommand("INSERT INTO userTable (username,password) VALUES (@username, @password)", con);
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@username", username.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Session["username"] = username.Text;
                Session["role"] = "user";
                Session["status"] = "Active";
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Username taken! ');</script>");
            }
        }
    }
}