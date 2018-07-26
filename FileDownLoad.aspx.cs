using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class Attachments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dataTable = new DataTable();

            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                string answer = (string)Session["SelectedAnswer"];

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

                    Files.DataSource = dataTable;
                    Files.DataBind();
                }

            }

        }
        protected void Files_RowCommand(object sender, GridViewCommandEventArgs e)
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

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["BackToQuestion"]);
        }

    }

}