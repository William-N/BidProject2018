using System;
using System.Web.UI;

namespace RFP
{
    public partial class Help : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if ((int)Session["RoleID"] != 1)
            {
                Panel1.Visible = false;
                Panel2.Visible = false;
            }

        }

    }

}