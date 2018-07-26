using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RoleID"] != null && (int)Session["RoleID"] != 1)
            {
                AddButton.Visible = false;
                EditButton.Visible = false;
            }
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add.aspx");
        }

        protected void FavoritesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Favorites.aspx");
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Search.aspx");
        }

        protected void NotificationButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Notifications.aspx");
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            //Clear all session variables before loading login page
            Session["UserID"] = null;
            Session["SelectedQuestion"] = null;
            Session["SelectedAnswer"] = null;
            Session["Search"] = null;
            Session["BackTo"] = null;
            Session["SearchResults"] = null;
            Session["RoleID"] = null;
            Response.Redirect("Login.aspx");
        }

        protected void HelpButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Help.aspx");
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditCategories.aspx");
        }

        protected void OverviewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Overview.aspx");
        }
    }
}
