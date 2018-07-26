using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class Search : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                DataTable categoryTable = new DataTable();
                DataTable subCategoryTable = new DataTable();
                SqlDataAdapter dataAdapter = null;
                SqlDataAdapter subCategoryDataAdapter = null;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.GetAllCategories(connection))
                    {
                        dataAdapter = new SqlDataAdapter(command);
                        dataAdapter.Fill(categoryTable);
                    }

                    using (SqlCommand subCategoryCommand = Utility.ServerConnection.GetSubCategories(connection, 1))
                    {
                        subCategoryDataAdapter = new SqlDataAdapter(subCategoryCommand);
                        subCategoryDataAdapter.Fill(subCategoryTable);
                    }

                }

                CategoryDropdown.DataSource = categoryTable;
                CategoryDropdown.DataTextField = "CategoryName";
                CategoryDropdown.DataValueField = "CategoryID";
                CategoryDropdown.DataBind();
                CategoryDropdown.Items.Add(new ListItem("All Categories"));

                SubCategoryDropdown.DataSource = subCategoryTable;
                SubCategoryDropdown.DataTextField = "SubCategoryName";
                SubCategoryDropdown.DataValueField = "SubCategoryID";
                SubCategoryDropdown.DataBind();
                SubCategoryDropdown.Items.Add(new ListItem("All SubCategories"));

                if (Session["SearchResults"] != null)
                {
                    SearchBox.Text = (string)Session["Search"];
                    CategoryDropdown.SelectedIndex = (int)Session["SelectedCategory"];
                    CategoryDropdown_SelectedIndexChanged(null, null);
                    SubCategoryDropdown.SelectedIndex = (int)Session["SelectedSubcategory"];

                    SearchButton_Click(null, null);
                }

            }

        }
        protected void CategoryDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (CategoryDropdown.SelectedItem.Text.Equals("All Categories"))
            {
                SubCategoryDropdown.Items.Clear();
                SubCategoryDropdown.Items.Add("All SubCategories");
            }

            else
            {
                //Assumes categoryID is always in line with index. DOES NOT HOLD TRUE. Must change to fetch true categoryID from data base.
                int selectedCategoryID = CategoryDropdown.SelectedIndex + 1;
                DataTable subCategoryTable = new DataTable();

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.GetSubCategories(connection, selectedCategoryID))
                    {
                        SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                        dataAdapter.Fill(subCategoryTable);
                    }

                }

                SubCategoryDropdown.DataSource = subCategoryTable;
                SubCategoryDropdown.DataTextField = "SubCategoryName";
                SubCategoryDropdown.DataValueField = "SubCategoryID";
                SubCategoryDropdown.DataBind();
                SubCategoryDropdown.Items.Add(new ListItem("All SubCategories"));
            }

        }
        protected void SearchButton_Click(object sender, EventArgs e)
        {
            SqlDataReader reader;
            ArrayList questions = new ArrayList();
            string search = SearchBox.Text;

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                if (CategoryDropdown.SelectedItem.Text.Equals("All Categories"))
                {
                    using (SqlCommand getQuestions = Utility.ServerConnection.GetQuestionsAll(connection, (int)Session["RoleID"]))
                    {
                        reader = getQuestions.ExecuteReader();
                    }
                    
                }

                else if (SubCategoryDropdown.SelectedItem.Text.Equals("All SubCategories"))
                {
                    int categoryID = -1;

                    using (SqlCommand getCategoryID = Utility.ServerConnection.GetCategoryIDWithName(connection, CategoryDropdown.SelectedItem.Text))
                    {
                        categoryID = (int)getCategoryID.ExecuteScalar();
                    }

                    using (SqlCommand getQuestions = Utility.ServerConnection.GetQuestionsByCategory(connection, categoryID, (int)Session["RoleID"]))
                    {
                        reader = getQuestions.ExecuteReader();
                    }

                }

                else
                {
                    int categoryID = -1;
                    int subCategoryID = -1;

                    using (SqlCommand getCategoryID = Utility.ServerConnection.GetCategoryIDWithName(connection, CategoryDropdown.SelectedItem.Text))
                    {
                        categoryID = (int)getCategoryID.ExecuteScalar();
                    }

                    using (SqlCommand getSubCategoryID = Utility.ServerConnection.GetSubCategoryIDWithName(connection, SubCategoryDropdown.SelectedItem.Text))
                    {
                        subCategoryID = (int)getSubCategoryID.ExecuteScalar();
                    }

                    using (SqlCommand getQuestions = Utility.ServerConnection.GetQuestionsByCategoryAndSubCategory(connection, categoryID, subCategoryID, (int)Session["RoleID"]))
                    {
                        reader = getQuestions.ExecuteReader();
                    }

                }

                while (reader.Read())
                {
                    questions.Add(reader.GetString(0));
                }

                if (!string.IsNullOrWhiteSpace(search))
                {
                    questions = Utility.SearchFunction.Search(search, questions);
                }

                Session["SearchResults"] = questions;
                Session["Search"] = search;
                Session["SelectedCategory"] = CategoryDropdown.SelectedIndex;
                Session["SelectedSubcategory"] = SubCategoryDropdown.SelectedIndex;

                GridView1.DataSource = questions;
                GridView1.DataBind();
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
            string question = row.Cells[3].Text;

            Session["SelectedQuestion"] = question;
            Session["BackTo"] = "Search.aspx";
            Session["BackTo2"] = "Search.aspx";

            if (e.CommandName == "View")
            {
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

            if (e.CommandName == "Edit")
            {
                Response.Redirect("EditQuestion.aspx");
            }

            if (e.CommandName == "DeleteQuestion")
            {
                int questionID = -1;

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

                SearchButton_Click(null, null);
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if ((int)Session["RoleID"] != 1)
            {
                e.Row.Cells[1].Visible = false;
                e.Row.Cells[2].Visible = false;
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                for (int i = 0; i < e.Row.Cells.Count; i++)
                {
                    if (!string.IsNullOrEmpty(e.Row.Cells[i].Text))
                    {
                        string encoded = e.Row.Cells[i].Text;
                        e.Row.Cells[i].Text = Context.Server.HtmlDecode(encoded);
                    }

                    e.Row.Cells[i].Attributes["style"] = "border-bottom: solid 1px black";
                }
            }

        }

    }
}