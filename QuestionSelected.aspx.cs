using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class QuestionSelected : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if ((int)Session["RoleID"] != 1)
            {
                AddAnswerButton.Visible = false;
                EditButton.Visible = false;
                DeleteButton.Visible = false;
                ViewsLabel.Visible = false;
            }

            if (!IsPostBack)
            {

                int questionID = -1;
                string question = (string)Session["SelectedQuestion"];

                QuestionLabel.Text = question;
                QuestionPanel.Attributes["style"] = "padding: 10px; margin 10px;";

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand getQuestionIDWithName = Utility.ServerConnection.GetQuestionIDWithName(connection, question))
                    {
                        questionID = (int)getQuestionIDWithName.ExecuteScalar();
                    }


                    string category, subcategory;
                    using(SqlCommand getCategory = Utility.ServerConnection.GetCategory(connection, questionID))
                    {
                        category = (string)getCategory.ExecuteScalar();
                    }
                    using (SqlCommand getSubCategory = Utility.ServerConnection.GetSubcategory(connection, questionID))
                    {
                        subcategory = (string)getSubCategory.ExecuteScalar();
                    }
                    CategoryLabel.Text = "Category: " + category;
                    CategoryLabel.Attributes["style"] = "font-weight: bold;";
                    SubCategoryLabel.Text = "SubCategory: " + subcategory;
                    SubCategoryLabel.Attributes["style"] = "font-weight: bold;";

                    using (SqlCommand getQuestions = Utility.ServerConnection.GetAnswersByQuestion(connection, questionID))
                    {
                        using (SqlDataReader reader = getQuestions.ExecuteReader())
                        {
                            DataTable dataTable = new DataTable();

                            dataTable.Columns.Add("Answer");
                            dataTable.Columns.Add("Date Added");
                            dataTable.Columns.Add("Date Edited");
                            dataTable.Columns.Add("Hit Counter");

                            while (reader.Read())
                            {
                                var answer = reader.GetValue(0);
                                var dateAdded = reader.GetValue(1);
                                string dateEdited = null;
                                var hitCounter = reader.GetValue(3);

                                try
                                {
                                    dateEdited = Convert.ToString(reader.GetDateTime(2));
                                }
                                catch
                                {

                                }

                                dataTable.Rows.Add(answer, dateAdded, dateEdited, hitCounter);
                                
                            }
                            
                            GridView1.DataSource = dataTable;
                            GridView1.DataBind();
                        }

                    }

                    using (SqlCommand getDateAdded = Utility.ServerConnection.GetQuestionDateAdded(connection, questionID))
                    {
                        DateAdded.Text = "Date Added: " + Convert.ToString(Convert.ToDateTime(getDateAdded.ExecuteScalar()));
                        DateAdded.Attributes["style"] = "font-weight: bold;";
                    }

                    using (SqlCommand getDateEdited = Utility.ServerConnection.GetQuestionDateEdited(connection, questionID))
                    {
                        try
                        {
                            DateEdited.Text = "Last Edited: " + Convert.ToString(Convert.ToDateTime(getDateEdited.ExecuteScalar()));
                        }

                        catch
                        {
                            DateEdited.Text = "Last Edited: N.A.";
                        }

                        DateEdited.Attributes["style"] = "font-weight: bold;";
                    }

                    using (SqlCommand getViews = Utility.ServerConnection.GetQuestionViews(connection, questionID))
                    {
                        int views = (int)getViews.ExecuteScalar();
                        ViewsLabel.Text = "Question Views: " + views.ToString();
                        ViewsLabel.Attributes["style"] = "font-weight: bold";
                    }

                    InfoLabel.Attributes["style"] = "font-weight: bold";
                }

            }
            //This sets up the javascript for the copy button functionality
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                GridView1.Rows[i].Cells[4].ID = "Answer";
                GridView1.Rows[i].Cells[1].Attributes.Add("onclick", "javascript:myFunction(\"MainContent_GridView1_Answer_" + i.ToString() + "\")");
            }

        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // Retrieve the row index stored in the 
            // CommandArgument property.
            int index = Convert.ToInt32(e.CommandArgument);

            // Retrieve the row that contains the button 
            // from the Rows collection.
            GridViewRow row = GridView1.Rows[index];
            string answer = row.Cells[4].Text;

            Session["SelectedAnswer"] = answer;
            if (e.CommandName == "Copy")
            {
                SqlConnection connection = Utility.ServerConnection.Connection();
                SqlCommand answerCounter = Utility.ServerConnection.AnswerViewCount(connection, answer);
                connection.Open();
                answerCounter.ExecuteNonQuery();
                connection.Close();
            }

            if (e.CommandName == "Edit")
            {
                Response.Redirect("EditAnswer.aspx");
            }

            if (e.CommandName == "DeleteAnswer")
            {
                int answerID = -1;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand getAnswerIDWithName = Utility.ServerConnection.GetAnswerIDWithText(connection, answer))
                    {
                        answerID = (int)getAnswerIDWithName.ExecuteScalar();
                    }

                    using (SqlCommand delete = Utility.ServerConnection.RemoveAnswer(connection, answerID))
                    {
                        delete.ExecuteNonQuery();
                    }

                    int questionID = -1;
                    string question = (string)Session["SelectedQuestion"];
                    QuestionLabel.Text = question;

                    using (SqlCommand getQuestionIDWithName = Utility.ServerConnection.GetQuestionIDWithName(connection, question))
                    {
                        questionID = (int)getQuestionIDWithName.ExecuteScalar();
                    }

                    using (SqlCommand getQuestions = Utility.ServerConnection.GetAnswersByQuestion(connection, questionID))
                    {
                        SqlDataReader reader = getQuestions.ExecuteReader();
                        GridView1.DataSource = reader;
                        GridView1.DataBind();
                    }
                    
                }
                
            }

            if (e.CommandName == "MoveToFiles")
            {
                Session["SelectedAnswer"] = row.Cells[4].Text;
                Session["BackToQUestion"] = "QuestionSelected.aspx";
                Response.Redirect("FileDownLoad");
            }

        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["BackTo"]);
        }

        protected void FavoriteButton_Click(object sender, EventArgs e)
        {
            int userID = (int)Session["UserID"];

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                SqlCommand cmd = null;
                SqlDataReader reader = null;
                int questionID = -1;

                using (cmd = Utility.ServerConnection.GetQuestionIDWithName(connection, (string)Session["SelectedQuestion"]))
                {
                    using (reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            questionID = reader.GetInt32(0);
                        }
                    }
                }

                using (cmd = Utility.ServerConnection.CheckFavorite(connection, questionID, userID))
                {
                    using (reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            reader.Close();
                            FavoritesLabel.Text = "You already favorited this question";
                        }

                        else
                        {
                            reader.Close();
                            cmd = Utility.ServerConnection.AddFavorite(connection, questionID, userID);
                            cmd.ExecuteNonQuery();

                            FavoritesLabel.Text = "Added to favorites";
                        }

                    }

                }

            }
            
        }
        protected void AddAnswerButton_Click(object sender, EventArgs e)
        {
            Session["Question"] = QuestionLabel.Text;
            Session["BackToQuestion"] = "QuestionSelected.aspx";
            Response.Redirect("AddAnswer.aspx");
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            string queryText = null;
            string encoded = null;
            bool foundQueryText = false;

            if((int)Session["RoleID"] != 1)
            {
                e.Row.Cells[2].Visible = false;
                e.Row.Cells[3].Visible = false;
                e.Row.Cells[7].Visible = false;
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    if (!string.IsNullOrEmpty(e.Row.Cells[i].Text))
                    {
                        encoded = e.Row.Cells[i].Text;
                        e.Row.Cells[i].Text = Context.Server.HtmlDecode(encoded);

                        if (foundQueryText == false)
                        {
                            queryText = e.Row.Cells[4].Text;
                        }

                        foundQueryText = true;

                    }

                    e.Row.Cells[i].Attributes["style"] = "border-bottom: solid 1px black";
                }

                foreach(GridViewRow row in GridView1.Rows)
                {
                    row.Cells[7].Attributes["style"] = "vertical-align: top;";
                }

                if (!(e.Row.FindControl("FileDownload") == null))
                {
                    Button attachmentButton = (Button)e.Row.FindControl("FileDownload");

                    //Checking if each answer has file(s) associated with itself. If so, make the file button visible.
                    using (SqlConnection connection = Utility.ServerConnection.Connection())
                    {
                        int answerID = -1;
                        List<int> attachmentIDList = new List<int>();
                        connection.Open();

                        using (SqlCommand command = Utility.ServerConnection.GetAnswerIDWithText(connection, queryText))
                        {
                            answerID = (int)command.ExecuteScalar();
                        }
                        using (SqlCommand command = Utility.ServerConnection.GetAttachmentIDWithAnswerID(connection, answerID))
                        {
                            using (SqlDataReader reader = command.ExecuteReader())
                            {
                                while (reader.Read())
                                {
                                    attachmentIDList.Add((int)reader.GetValue(0));
                                }
                            }
                        }

                        if ((attachmentIDList.Count > 0))
                        {
                            attachmentButton.Visible = true;
                        }
                        else
                        {
                            attachmentButton.Visible = false;
                        }

                    }

                }

            }

        }

        protected void EditPermissionsButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditPermissions.aspx");
        }

        protected void RemoveFromActiveButton_Click(object sender, EventArgs e)
        {
            SqlConnection connection = Utility.ServerConnection.Connection();
            SqlCommand removeCommand = Utility.ServerConnection.DeleteQuestion(connection, QuestionLabel.Text);
        }

        protected void DeleteButton_Click(object sender, EventArgs e)
        {
            int questionID = -1;
            string question = (string)Session["SelectedQuestion"];

            QuestionLabel.Text = question;

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                using (SqlCommand getQuestionIDWithName = Utility.ServerConnection.GetQuestionIDWithName(connection, question))
                {
                    questionID = (int)getQuestionIDWithName.ExecuteScalar();
                }

                using (SqlCommand delete = Utility.ServerConnection.RemoveQuestion(connection, questionID))
                {
                    delete.ExecuteNonQuery();
                }

            }

            Response.Redirect((string)Session["BackTo"]);
        }

        protected void EditButton_Click(object sender, EventArgs e)
        {
            Session["BackTo2"] = "QuestionSelected.aspx";
            Response.Redirect("EditQuestion.aspx");
        }

        protected void EditCategoriesButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditQuestionCategory.aspx");
        }

    }
}