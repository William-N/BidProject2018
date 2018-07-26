using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class EditQuestion : Page
    {
        protected int id;
        protected int id2;
        static bool SBSViewable, DealerViewable;
        static int questionID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                QuestionBox.Text = (string)Session["SelectedQuestion"];

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

                string question = (string)Session["SelectedQuestion"];

                SqlCommand getQuestionIDWithName = Utility.ServerConnection.GetQuestionIDWithName(connection, question);
                questionID = (int)getQuestionIDWithName.ExecuteScalar();

                string category = (string)Utility.ServerConnection.GetCategory(connection, questionID).ExecuteScalar();
                string subcategory = (string)Utility.ServerConnection.GetSubcategory(connection, questionID).ExecuteScalar();

                SetDropDownByValue(CategoryDropdown, category);
                CategoryDropdown_SelectedIndexChanged(null, null);
                SetDropDownByValue(SubCategoryDropdown, subcategory);

                SqlCommand checkSBS = Utility.ServerConnection.CheckRoleQuestion(connection, questionID, 2);
                SqlDataReader reader = checkSBS.ExecuteReader();

                SBSCheckBox.Checked = SBSViewable = reader.Read();
                reader.Close();

                SqlCommand checkDealer = Utility.ServerConnection.CheckRoleQuestion(connection, questionID, 3);
                reader = checkDealer.ExecuteReader();
                DealerCheckBox.Checked = DealerViewable = reader.Read();

            }
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
        protected void Submit_Click(object sender, EventArgs e)
        {
            string question = (string)Session["SelectedQuestion"];
            int userID = (int)Session["UserID"];
            
            SqlConnection connection = Utility.ServerConnection.Connection();
            connection.Open();
            
            SqlCommand cmd = Utility.ServerConnection.UpdateQuestion(connection, questionID, QuestionBox.Text, userID);
            cmd.ExecuteNonQuery();

            Session["SelectedQuestion"] = QuestionBox.Text;

            int categoryID = -1;
            int subCategoryID = -1;

            SqlCommand getCategoryID = Utility.ServerConnection.GetCategoryIDWithName(connection, CategoryDropdown.SelectedItem.Text);
            SqlCommand getSubCategoryID = Utility.ServerConnection.GetSubCategoryIDWithName(connection, SubCategoryDropdown.SelectedItem.Text);

            categoryID = (int)getCategoryID.ExecuteScalar();
            subCategoryID = (int)getSubCategoryID.ExecuteScalar();

            SqlCommand update = Utility.ServerConnection.UpdateCategoryAndSubCategory(connection, questionID, categoryID, subCategoryID);
            update.ExecuteNonQuery();
            
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

            connection.Close();

            Response.Redirect((string)Session["BackTo2"]);
        }

        protected void BackButton_Click(object sender, EventArgs e)
        {
            Response.Redirect((string)Session["BackTo2"]);
        }
    }
}