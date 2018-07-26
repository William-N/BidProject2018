using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Web.UI;
using System.Windows.Forms;

namespace RFP
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    DataTable categoryTable = new DataTable();
                    DataTable subCategoryTable = new DataTable();
                    SqlDataAdapter categoryDataAdapter = null;
                    SqlDataAdapter subCategoryDataAdapter = null;

                    using (SqlConnection connection = Utility.ServerConnection.Connection())
                    {
                        connection.Open();

                        using (SqlCommand getAllCategories = Utility.ServerConnection.GetAllCategories(connection))
                        {
                            categoryDataAdapter = new SqlDataAdapter(getAllCategories);
                        }

                        using (SqlCommand getAllSubCategories = Utility.ServerConnection.GetSubCategories(connection, 1))
                        {
                            subCategoryDataAdapter = new SqlDataAdapter(getAllSubCategories);
                        }

                        categoryDataAdapter.Fill(categoryTable);
                        subCategoryDataAdapter.Fill(subCategoryTable);

                        Categories.DataSource = categoryTable;
                        Categories.DataTextField = "CategoryName";
                        Categories.DataValueField = "CategoryID";
                        Categories.DataBind();

                        SubCategories.DataSource = subCategoryTable;
                        SubCategories.DataTextField = "SubCategoryName";
                        SubCategories.DataValueField = "SubCategoryID";
                        SubCategories.DataBind();

                        Categories.SelectedIndex = 0;
                        SubCategories.SelectedIndex = 0;
                    }

                }

                catch
                {
                    
                }

            }

        }

        protected void Submit_Click(object sender, EventArgs e)
        {

            bool canSend = false;
            bool isAnswer = true;
            bool fileUpload = false;

            canSend = CheckSubmittionForm();

            if(AnswerBox.Text == ("Answer") || string.IsNullOrWhiteSpace(AnswerBox.Text))
            {
                isAnswer = false;
            }

            if(FileUpload1.HasFile)
            {
                fileUpload = true;  
            }

            if(canSend == true)
            {
                int categoryID = -1;
                int subCategoryID = -1;
                int questionID = -1;
                string question = QuestionBox.Text;
                string answer = AnswerBox.Text;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand getCategoryID = Utility.ServerConnection.GetCategoryIDWithName(connection, Categories.SelectedItem.Text))
                    {
                        categoryID = (int)getCategoryID.ExecuteScalar();
                    }

                    using (SqlCommand getSubCategoryID = Utility.ServerConnection.GetSubCategoryIDWithName(connection, SubCategories.SelectedItem.Text))
                    {
                        subCategoryID = (int)getSubCategoryID.ExecuteScalar();
                    }

                    using (SqlCommand addQuestion = Utility.ServerConnection.AddQuestionCommand(connection, categoryID, subCategoryID, question, 1, 1))
                    {
                        addQuestion.ExecuteNonQuery();
                    }

                    using (SqlCommand getQuestionID = Utility.ServerConnection.GetQuestionIDWithName(connection, question))
                    {
                        questionID = (int)getQuestionID.ExecuteScalar();
                    }


                    if (SBSCheckBox.Checked)
                    {
                        using (SqlCommand addSBS = Utility.ServerConnection.AddRoleQuestion(connection, questionID, 2))
                        {
                            addSBS.ExecuteNonQuery();
                        }

                    }

                    if (DealerCheckBox.Checked)
                    {
                        using (SqlCommand addDealer = Utility.ServerConnection.AddRoleQuestion(connection, questionID, 3))
                        {
                            addDealer.ExecuteNonQuery();
                        }
                    }

                    using (SqlCommand addAnswer = Utility.ServerConnection.AddAnswerCommand(connection, answer, questionID, (int)Session["RoleID"]))
                    {
                        if (fileUpload == true && isAnswer == true)
                        {
                            int answerID = -1;
                            List<int> attachmentID = new List<int>();
                            List<HttpPostedFile> attachmentBytes = new List<HttpPostedFile>(FileUpload1.PostedFiles);

                            addAnswer.ExecuteNonQuery();

                            using (SqlCommand getAnswerIDWithText = Utility.ServerConnection.GetAnswerIDWithText(connection, answer))
                            {
                                answerID = (int)getAnswerIDWithText.ExecuteScalar();
                            }

                            for (int i = 0; i < attachmentBytes.Count; i++)
                            {
                                byte[] fileData = null;

                                using (BinaryReader binaryReader = new BinaryReader(Request.Files[i].InputStream))
                                {
                                    fileData = binaryReader.ReadBytes(Request.Files[i].ContentLength);
                                }

                                using (SqlCommand addAttachment = Utility.ServerConnection.AddAttachment(connection, Request.Files[i].FileName, fileData))
                                {
                                    addAttachment.ExecuteNonQuery();
                                }

                                using (SqlCommand getAttachmentID = Utility.ServerConnection.GetAttachmentIDWithName(connection, Request.Files[i].FileName))
                                {
                                    attachmentID.Add((int)getAttachmentID.ExecuteScalar());
                                }

                            }

                            for (int i = 0; i < attachmentID.Count; i++)
                            {
                                using (SqlCommand addAnswerAttachments = Utility.ServerConnection.AddAnswer_Attachment(connection, answerID, attachmentID[i]))
                                {
                                    addAnswerAttachments.ExecuteNonQuery();
                                }
                            }

                        }

                        else if (fileUpload == false && isAnswer == true)
                        {
                            addAnswer.ExecuteNonQuery();
                        }

                        ConfirmationLabel.Text = "Successful Entry";
                        QuestionBox.Text = "Question";
                        AnswerBox.Text = "Answer";
                    }

                }

            }

        }

        protected void Categories_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Since values do not begin at 0, increment by 1.
            int selectedCategoryID = Categories.SelectedIndex + 1;
            DataTable subCategoryTable = new DataTable();
            SqlDataAdapter dataAdapter = null;

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                using (SqlCommand getSubCategories = Utility.ServerConnection.GetSubCategories(connection, selectedCategoryID))
                {
                    dataAdapter = new SqlDataAdapter(getSubCategories);
                }

                dataAdapter.Fill(subCategoryTable);
            }

            SubCategories.DataSource = subCategoryTable;
            SubCategories.DataTextField = "SubCategoryName";
            SubCategories.DataValueField = "SubCategoryID";
            SubCategories.DataBind();
        }

        private bool CheckSubmittionForm()
        {
            //Check if values are valid to add to data base before entry.
            bool HasQuestionBoxText = false;
            bool IsCategorySelected = false;
            bool IsSubCategorySelected = false;

            if ((string.IsNullOrWhiteSpace(QuestionBox.Text)) || (QuestionBox.Text.Equals("Question")))
            {
                UserFeedBackQuestionBox.Text = "Enter a question";
            }
            else
            {
                HasQuestionBoxText = true;
                UserFeedBackQuestionBox.Text = "";
            }

            if (Categories.SelectedIndex > -1)
            {
                IsCategorySelected = true;
                UserFeedBackCategories.Text = "";
            }
            else
            {
                UserFeedBackCategories.Text = "Select a Category";
            }

            if(SubCategories.SelectedIndex > -1)
            {
                IsSubCategorySelected = true;
            }

            if (HasQuestionBoxText == true && IsCategorySelected == true && IsSubCategorySelected == true)
            {
                return true;
            }
            else return false;

        }

    }
}