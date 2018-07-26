using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class AnswerSelected : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if ((int)Session["RoleID"] != 1)
            {
                EditButton.Visible = false;
                DeleteButton.Visible = false;
            }
            if (!IsPostBack)
            {
                DataTable dataTable = new DataTable();
                string answer = (string)Session["SelectedAnswer"];
                AnswerLabel.Text = HttpUtility.HtmlDecode(answer);
                AnswerIDLabel.Visible = false;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    int answerID = -1;
                    List<int> attachmentIDList = new List<int>();
                    dataTable.Columns.Add("File", typeof(string));
                    dataTable.Columns.Add("ID");
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.GetAnswerIDWithText(connection, answer))
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

                    foreach (int attachmentID in attachmentIDList)
                    {
                        string name = "";

                        using (SqlCommand command = Utility.ServerConnection.GetAttachmentNameWithAttachmentID(connection, attachmentID))
                        {
                            name = ((string)command.ExecuteScalar());
                        }

                        dataTable.Rows.Add(name, attachmentID);

                    }
                    Attachments.DataSource = dataTable;
                    Attachments.DataBind();

                }

            }

        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuestionSelected.aspx");
        }
        protected void EditButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditAnswer.aspx");
        }
        protected void Attachments_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {
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

                    using (SqlCommand command = Utility.ServerConnection.RemoveAnswer(connection, answerID))
                    {
                        command.ExecuteNonQuery();
                    }

                    Response.Redirect("QuestionSelected.aspx");
                }

            }
            
        }

        protected void Attachments_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Download")
            {
                byte[] file = null;
                int id = -1;

                string[] arg = new string[2];
                arg = e.CommandArgument.ToString().Split(';');
                Session["currentFile"] = arg[0];
                Session["currentID"] = arg[1];

                string holdValue = (string)Session["currentID"];
                id = Convert.ToInt32(holdValue);

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.GetAttachmentsWithAttachmentID(connection, id))
                    {
                        file = ((byte[])command.ExecuteScalar());
                    }
                }

                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "attachment; filename=" + Session["currentFile"]);
                Response.BinaryWrite(file);
                Response.End();
            }
        }

        private string FileExtension(string fileName)
        {
            string extention = string.Empty;
            bool isExtention = false;

            foreach(char c in fileName)
            {
                if(isExtention == false)
                {
                    if (c == '.')
                    {
                        isExtention = true;
                    }

                }

                else
                {
                    extention += c;
                }

            }

            return extention;
        }

    }

}