using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjectIBTnew.wwwroot.html
{
    public partial class userPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Session["role"] = null;
            Session["status"] = null;
            Response.Redirect("index.aspx");
        }
    }
}