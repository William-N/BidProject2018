using System;
using System.Web.UI;

namespace RFP
{
    public partial class Overview : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

    }

}