using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Threading;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class EditQuestionCategory : Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            if (!IsPostBack)
            { 
                SqlConnection connection = Utility.ServerConnection.Connection();
                SqlCommand command = Utility.ServerConnection.GetAllCategories(connection);
                SqlCommand subCategoryCommand = Utility.ServerConnection.GetSubCategories(connection, 1);
                DataTable categoryTable = new DataTable();
                DataTable subCategoryTable = new DataTable();
                SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
                SqlDataAdapter subCategoryDataAdapter = new SqlDataAdapter(subCategoryCommand);

                connection.Open();
                dataAdapter.Fill(categoryTable);
                subCategoryDataAdapter.Fill(subCategoryTable);

                CategoryDropdown.DataSource = categoryTable;
                CategoryDropdown.DataTextField = "CategoryName";
                CategoryDropdown.DataValueField = "CategoryID";
                CategoryDropdown.DataBind();

                SubCategoryDropdown.DataSource = subCategoryTable;
                SubCategoryDropdown.DataTextField = "SubCategoryName";
                SubCategoryDropdown.DataValueField = "SubCategoryID";
                SubCategoryDropdown.DataBind();

                int questionID = -1;
                string question = (string)Session["SelectedQuestion"];

                SqlCommand getQuestionIDWithName = Utility.ServerConnection.GetQuestionIDWithName(connection, question);
                questionID = (int)getQuestionIDWithName.ExecuteScalar();

                string category = (string)Utility.ServerConnection.GetCategory(connection, questionID).ExecuteScalar();
                string subcategory = (string)Utility.ServerConnection.GetSubcategory(connection, questionID).ExecuteScalar();

                SetDropDownByValue(CategoryDropdown, category);
                CategoryDropdown_SelectedIndexChanged(null, null);
                SetDropDownByValue(SubCategoryDropdown, subcategory);
            }
        }
        protected void CategoryDropdown_SelectedIndexChanged(object sender, EventArgs e)
        {

            int selectedCategoryID = CategoryDropdown.SelectedIndex + 1;
            SqlConnection connection = Utility.ServerConnection.Connection();
            SqlCommand command = Utility.ServerConnection.GetSubCategories(connection, selectedCategoryID);
            DataTable subCategoryTable = new DataTable();
            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);

            connection.Open();
            dataAdapter.Fill(subCategoryTable);
            connection.Close();

            SubCategoryDropdown.DataSource = subCategoryTable;
            SubCategoryDropdown.DataTextField = "SubCategoryName";
            SubCategoryDropdown.DataValueField = "SubCategoryID";
            SubCategoryDropdown.DataBind();

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            int categoryID = -1;
            int subCategoryID = -1;

            SqlConnection connection = Utility.ServerConnection.Connection();
            connection.Open();

            SqlCommand getCategoryID = Utility.ServerConnection.GetCategoryIDWithName(connection, CategoryDropdown.SelectedItem.Text);
            SqlCommand getSubCategoryID = Utility.ServerConnection.GetSubCategoryIDWithName(connection, SubCategoryDropdown.SelectedItem.Text);

            categoryID = (int)getCategoryID.ExecuteScalar();
            subCategoryID = (int)getSubCategoryID.ExecuteScalar();

            int questionID = -1;
            string question = (string)Session["SelectedQuestion"];
            
            SqlCommand getQuestionIDWithName = Utility.ServerConnection.GetQuestionIDWithName(connection, question);
            questionID = (int)getQuestionIDWithName.ExecuteScalar();

            SqlCommand update = Utility.ServerConnection.UpdateCategoryAndSubCategory(connection, questionID, categoryID, subCategoryID);
            update.ExecuteNonQuery();

            connection.Close();
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("QuestionSelected.aspx");
        }

        public static void SetDropDownByValue(DropDownList ddl, string value)
        {
            foreach (ListItem li in ddl.Items)
            {
                if (li.Text.Equals(value))
                {
                    li.Selected = true;
                    break;
                }

            }

        }

    }

}