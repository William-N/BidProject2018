using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace RFP
{
    public partial class EditPermissions : Page
    {
        static bool SBSViewable, DealerViewable;
        static int questionID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                string question = (string)Session["SelectedQuestion"];
                QuestionLabel.Text = question;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();
                    questionID = (int)Utility.ServerConnection.GetQuestionIDWithName(connection, question).ExecuteScalar();

                    SqlCommand checkSBS = Utility.ServerConnection.CheckRoleQuestion(connection, questionID, 2);
                    SqlDataReader reader = checkSBS.ExecuteReader();

                    SBSCheckBox.Checked = SBSViewable = reader.Read();
                    reader.Close();

                    SqlCommand checkDealer = Utility.ServerConnection.CheckRoleQuestion(connection, questionID, 3);
                    reader = checkDealer.ExecuteReader();
                    DealerCheckBox.Checked = DealerViewable = reader.Read();
                }
                
            }

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlCommand cmd;

            SqlConnection connection = Utility.ServerConnection.Connection();
            connection.Open();
            if (SBSCheckBox.Checked && !SBSViewable)
            {
                cmd = Utility.ServerConnection.AddRoleQuestion(connection, questionID, 2);
                cmd.ExecuteNonQuery();
            }
            else if (!SBSCheckBox.Checked && SBSViewable)
            {
                cmd = Utility.ServerConnection.RemoveRoleQuestion(connection, questionID, 2);
                cmd.ExecuteNonQuery();
            }
            if (DealerCheckBox.Checked && !DealerViewable)
            {
                cmd = Utility.ServerConnection.AddRoleQuestion(connection, questionID, 3);
                cmd.ExecuteNonQuery();
            }
            else if (!DealerCheckBox.Checked && DealerViewable)
            {
                cmd = Utility.ServerConnection.RemoveRoleQuestion(connection, questionID, 3);
                cmd.ExecuteNonQuery();
            }

            Response.Redirect("QuestionSelected.aspx");
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuestionSelected.aspx");
        }

    }

}