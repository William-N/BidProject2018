using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;

namespace RFP
{
    public partial class AddAnswer : Page
    {

        String question = null;

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                question = (string)Session["Question"];
            }

            else
            {
                try
                {
                    question = (string)Session["Question"];
                }

                catch
                {

                }

            }

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            bool canSend = false;
            bool fileUpload = false;

            if (!string.IsNullOrWhiteSpace(AddAnswerTextBox.Text))
            {
                canSend = true;
            }
            if (AddAnswerFile.HasFile)
            {
                fileUpload = true;
            }

            int questionID = -1;
            string answer = AddAnswerTextBox.Text;

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                if (canSend == true)
                {
                    SqlCommand addAnswer;

                    using (SqlCommand getQuestionID = Utility.ServerConnection.GetQuestionIDWithName(connection, question))
                    {
                        questionID = (int)getQuestionID.ExecuteScalar();
                    }

                    addAnswer = Utility.ServerConnection.AddAnswerCommand(connection, answer, questionID, (int)Session["RoleID"]);

                    if (fileUpload == true)
                    {
                        int answerID = -1;
                        List<int> attachmentID = new List<int>();
                        List<HttpPostedFile> attachmentBytes = new List<HttpPostedFile>(AddAnswerFile.PostedFiles);

                        addAnswer.ExecuteNonQuery();
                        SqlCommand getAnswerIDWithText = Utility.ServerConnection.GetAnswerIDWithText(connection, answer);
                        answerID = (int)getAnswerIDWithText.ExecuteScalar();

                        for (int i = 0; i < attachmentBytes.Count; i++)
                        {
                            byte[] fileData = null;

                            using (BinaryReader binaryReader = new BinaryReader(Request.Files[i].InputStream))
                            {
                                fileData = binaryReader.ReadBytes(Request.Files[i].ContentLength);
                            }

                            SqlCommand addAttachment = Utility.ServerConnection.AddAttachment(connection, Request.Files[i].FileName, fileData);
                            addAttachment.ExecuteNonQuery();
                            SqlCommand getAttachmentID = Utility.ServerConnection.GetAttachmentIDWithName(connection, Request.Files[i].FileName);
                            attachmentID.Add((int)getAttachmentID.ExecuteScalar());
                        }

                        for (int i = 0; i < attachmentID.Count; i++)
                        {
                            SqlCommand addAnswerAttachments = Utility.ServerConnection.AddAnswer_Attachment(connection, answerID, attachmentID[i]);
                            addAnswerAttachments.ExecuteNonQuery();
                            Page.Response.Redirect(Page.Request.Url.ToString(), true);
                        }

                    }

                    else
                    {
                        addAnswer.ExecuteNonQuery();
                        Page.Response.Redirect(Page.Request.Url.ToString(), true);
                    }

                    AddAnswerTextBox.Text = "";
                    AddAnswerFile.Attributes.Clear();

                    Response.Redirect((string)Session["BackToQuestion"]);
                }

            }

        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["BackToQuestion"]);
        }

    }

}