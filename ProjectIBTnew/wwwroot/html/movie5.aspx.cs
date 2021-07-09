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
    public partial class movie5 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            loggedIn.Visible = false;
            Session["movieID"] = "5";
            if (Session["status"] != null)
            {
                loggedIn.Visible = true;
            }
            if (Session["status"] == null)
            {
                loggedIn.Visible = false;
                loggedInAdmin.Visible = false;
            }
            else
            {
                loggedIn.Visible = true;
                loggedInAdmin.Visible = false;
            }

            if (Session["role"] != null)
            {
                if (Session["role"].ToString() == "admin")
                {
                    loggedIn.Visible = false;
                    loggedInAdmin.Visible = true;
                }
            }
            if (Session["username"] != null)
            {
                if (Session["username"].ToString() != "admin")
                {
                    reviewName.Text = Session["username"].ToString();
                    orderName.Value = Session["username"].ToString();
                }
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (reviewName.Text.Length != 0 && review.Text.Length != 0)
            {
                string name = reviewName.Text;
                string reviewText = review.Text;

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO reviewTable1 (name, review, movie_id) VALUES (@name, @review, @movie_id)", con);
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@name", name);
                cmd.Parameters.AddWithValue("@review", reviewText);
                cmd.Parameters.AddWithValue("@movie_id", Session["movieID"]);
                cmd.ExecuteNonQuery();
                con.Close();

                reviewName.Text = "";
                review.Text = "";
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Bad review input!')", true);
            }
            GridView1.DataBind();
        }



        protected void btnOrder_Click(object sender, EventArgs e)
        {

            if (orderName.Value.Length != 0 && adress.Value.Length != 0 && quantity.Value.Length != 0 &&
                (int.Parse(quantity.Value) > 0 && int.Parse(quantity.Value) <= 10))
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO orderTable (movie_id, name, adress, quantity) VALUES (@movie_id,@name, @adress,@quantity)", con);
                cmd.Connection = con;
                cmd.Parameters.AddWithValue("@movie_id", Session["movieID"]);
                cmd.Parameters.AddWithValue("@name", orderName.Value);
                cmd.Parameters.AddWithValue("@adress", adress.Value);
                cmd.Parameters.AddWithValue("@quantity", int.Parse(quantity.Value));
                cmd.ExecuteNonQuery();
                con.Close();

                orderName.Value = "";
                adress.Value = "";
                quantity.Value = "";
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                    "alert('Order sent successfully! Thank you for your purchase!')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage",
                    "alert('Bad order input!')", true);
            }
        }
    }
}