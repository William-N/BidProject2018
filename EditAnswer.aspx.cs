using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace RFP
{
    public partial class EditAnswer : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                string answer = (string)Session["SelectedAnswer"];

                AnswerBox.Text = answer;
            }

        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuestionSelected.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            int userID = (int)Session["UserID"];

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                using (SqlCommand cmd = Utility.ServerConnection.GetAnswerIDWithText(connection, (string)Session["SelectedAnswer"]))
                {
                    int answerID = -1;

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            answerID = reader.GetInt32(0);
                        }
                    }

                    using (SqlCommand command = Utility.ServerConnection.UpdateAnswer(connection, answerID, AnswerBox.Text, userID))
                    {
                        cmd.ExecuteNonQuery();

                        Session["SelectedAnswer"] = AnswerBox.Text;
                        ChangedLabel.Text = "Changes saved";
                    }

                }

            }

            Response.Redirect("QuestionSelected.aspx");
        }

    }

}