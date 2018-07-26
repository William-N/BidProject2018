using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class Favorites : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            {
                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();
                    int userID = (int)Session["UserID"];

                    using (SqlCommand getQuestions = Utility.ServerConnection.GetUserFavorites(connection, userID))
                    {
                        using (SqlDataReader reader = getQuestions.ExecuteReader())
                        {
                            GridView1.DataSource = reader;
                            GridView1.DataBind();
                        }

                    }

                }

            }

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "View")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridView1.Rows[index];
                string question = row.Cells[2].Text;

                Session["SelectedQuestion"] = question;
                Session["BackTo"] = "Favorites.aspx";

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand questionViewCount = Utility.ServerConnection.QuestionViewCount(connection, question))
                    {
                        questionViewCount.ExecuteNonQuery();
                    }
                }

                Response.Redirect("QuestionSelected.aspx");
            }

            else if (e.CommandName == "Delete")
            {
                // Retrieve the row index stored in the 
                // CommandArgument property.
                int index = Convert.ToInt32(e.CommandArgument);

                // Retrieve the row that contains the button 
                // from the Rows collection.
                GridViewRow row = GridView1.Rows[index];
                string question = row.Cells[2].Text;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();
                    int questionID = -1;
                    int userID = (int)Session["UserID"];

                    using (SqlCommand cmd = Utility.ServerConnection.GetQuestionIDWithName(connection, question))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                questionID = reader.GetInt32(0);
                            }

                        }

                    }

                    using (SqlCommand cmd = Utility.ServerConnection.DeleteFavorite(connection, questionID, userID))
                    {
                        cmd.ExecuteNonQuery();
                    }

                }

                Response.Redirect("Favorites.aspx");
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    if (!string.IsNullOrEmpty(e.Row.Cells[i].Text))
                    {   
                        string encoded = e.Row.Cells[2].Text;
                        e.Row.Cells[2].Text = Context.Server.HtmlDecode(encoded);
                    }

                    e.Row.Cells[i].Attributes["style"] = "border-bottom: solid 1px black";
                }

            }
            
        }

    }

}