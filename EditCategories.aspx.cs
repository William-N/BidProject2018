using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class EditCategories : Page
    {
        public static int sqlCategoryIndex { get; set; }
        protected int sqlSubCategoryIndex;
        protected int categoryIndex;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable CategoryDataTable = new DataTable();
                CategoryDataTable.Columns.Add("CategoryName");

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand getCategories = Utility.ServerConnection.GetCategories(connection))
                    {
                        SqlDataAdapter dataAdapter = new SqlDataAdapter("SELECT CategoryName, CategoryID FROM Categories WHERE Active=1", connection);
                        DataSet dataSet = new DataSet();
                        dataAdapter.Fill(dataSet);
                        CategoryGridView.DataSource = dataSet.Tables[0];
                        CategoryGridView.DataBind();
                    }

                }

                CategoryGridView.Visible = true;
                SubCategoryGridView.Visible = false;
                AddSubCategory.Visible = false;
                InsertNewCategory.Visible = false;
                NewCategoryText.Visible = false;
                InsertNewSubCategory.Visible = false;
                NewSubCategoryText.Visible = false;
                DeleteCategory.Visible = false;
                DeleteSubCategory.Visible = false;
                EditCategory.Visible = false;
                EditSubCategory.Visible = false;
                EditCategoryTextBox.Visible = false;
                EditSubCategoryTextBox.Visible = false;
                InsertEditCategory.Visible = false;
                InsertEditSubCategory.Visible = false;
                CancelNewCategory.Visible = false;
                CancelNewSubCategory.Visible = false;
                CancelEditCategory.Visible = false;
                CancelEditSubCategory.Visible = false;
            }

        }

        protected void CategoryGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable subCategoryDataTable = new DataTable();
            subCategoryDataTable.Columns.Add("Subcategories");
            int index = CategoryGridView.SelectedIndex;
            GridViewRow row = CategoryGridView.Rows[index];
            
            //Value here important to maintain for other actions such as editing, and should be implemented to deleting.
            sqlCategoryIndex = Convert.ToInt32(row.Cells[2].Text);

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                using (SqlCommand getSubCategories = Utility.ServerConnection.GetSubCategories(connection, sqlCategoryIndex))
                {
                    SqlDataAdapter dataAdapter = new SqlDataAdapter(getSubCategories);
                    DataSet dataSet = new DataSet();
                    dataAdapter.Fill(dataSet);
                    SubCategoryGridView.DataSource = dataSet.Tables[0];
                    SubCategoryGridView.DataBind();
                }

            }

            SubCategoryGridView.Visible = true;
            AddSubCategory.Visible = true;
            InsertNewSubCategory.Visible = false;
            NewSubCategoryText.Visible = false;
            EditCategory.Visible = true;
            DeleteCategory.Visible = true;
            EditSubCategory.Visible = false;
            DeleteSubCategory.Visible = false;

        }

        protected void SubCategoryGridView_SelectedIndexChanged(object sender, EventArgs e)
        {
            EditSubCategory.Visible = true;
            DeleteSubCategory.Visible = true;
        }

        protected void AddCategory_Click(object sender, EventArgs e)
        {
            InsertNewCategory.Visible = true;
            NewCategoryText.Visible = true;
            CancelNewCategory.Visible = true;
        }

        protected void AddSubCategory_Click(object sender, EventArgs e)
        {
            InsertNewSubCategory.Visible = true;
            NewSubCategoryText.Visible = true;
            CancelNewSubCategory.Visible = true;
        }

        protected void InsertNewCategory_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(NewCategoryText.Text))
            {
                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.AddCategoryCommand(connection, NewCategoryText.Text, 1))
                    {
                        command.ExecuteNonQuery();
                    }

                }

                NewCategoryText.Text = "";
                InsertNewCategory.Visible = false;
                NewCategoryText.Visible = false;

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
                ConfirmCategoryAdd.Visible = true;
                ConfirmCategoryAdd.Text = "Success!";
            }

        }

        protected void InsertNewSubCategory_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(NewSubCategoryText.Text))
            {
                int categoryID = -1;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();
                    GridViewRow row = CategoryGridView.SelectedRow;

                    using (SqlCommand com = Utility.ServerConnection.GetCategoryIDWithName(connection, row.Cells[1].Text))
                    {
                        categoryID = (int)com.ExecuteScalar();

                        using (SqlCommand command = Utility.ServerConnection.AddSubCategoryCommand(connection, NewSubCategoryText.Text, categoryID))
                        {
                            command.ExecuteNonQuery();
                        }

                        NewSubCategoryText.Text = "";
                        InsertNewSubCategory.Visible = false;
                        NewSubCategoryText.Visible = false;

                        Page.Response.Redirect(Page.Request.Url.ToString(), true);
                        ConfirmSubCategoryAdd.Visible = true;
                        ConfirmSubCategoryAdd.Text = "Success!";
                    }

                }

            }

        }

        protected void CancelNewCategory_Click(object sender, EventArgs e)
        {
            NewCategoryText.Text = "";
            InsertNewCategory.Visible = false;
            CancelNewCategory.Visible = false;
            NewCategoryText.Visible = false;
        }

        protected void CancelNewSubCategory_Click(object sender, EventArgs e)
        {
            NewSubCategoryText.Text = "";
            InsertNewSubCategory.Visible = false;
            CancelNewSubCategory.Visible = false;
            NewSubCategoryText.Visible = false;
        }

        protected void EditCategory_Click(object sender, EventArgs e)
        {
            InsertEditCategory.Visible = true;
            CancelEditCategory.Visible = true;
            EditCategoryTextBox.Visible = true;
        }

        protected void EditSubCategory_Click(object sender, EventArgs e)
        {
            InsertEditSubCategory.Visible = true;
            CancelEditSubCategory.Visible = true;
            EditSubCategoryTextBox.Visible = true;
        }

        protected void CancelEditCategory_Click(object sender, EventArgs e)
        {
            EditCategoryTextBox.Text = "";
            InsertEditCategory.Visible = false;
            CancelEditCategory.Visible = false;
            EditCategoryTextBox.Visible = false;
        }

        protected void InsertEditCategory_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(EditCategoryTextBox.Text))
            {
                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.UpdateCategories(connection, EditCategoryTextBox.Text, sqlCategoryIndex))
                    {
                        command.ExecuteNonQuery();
                    }
                }

                EditCategoryTextBox.Text = "";
                InsertEditCategory.Visible = false;
                CancelEditCategory.Visible = false;
                EditCategoryTextBox.Visible = false;

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }

        }

        protected void InsertEditSubCategory_Click(object sender, EventArgs e)
        {
            if(!string.IsNullOrWhiteSpace(EditSubCategoryTextBox.Text))
            {
                GridViewRow row = SubCategoryGridView.SelectedRow;

                using (SqlConnection connection = Utility.ServerConnection.Connection())
                {
                    connection.Open();

                    using (SqlCommand command = Utility.ServerConnection.UpdateSubCategory(connection, EditSubCategoryTextBox.Text, row.Cells[1].Text))
                    {
                        command.ExecuteNonQuery();
                    }

                }

                EditSubCategoryTextBox.Text = "";
                InsertEditSubCategory.Visible = false;
                CancelEditSubCategory.Visible = false;
                EditSubCategoryTextBox.Visible = false;

                Page.Response.Redirect(Page.Request.Url.ToString(), true);
            }

        }

        protected void CancelEditSubCategory_Click(object sender, EventArgs e)
        {
            EditSubCategoryTextBox.Text = "";
            InsertEditSubCategory.Visible = false;
            CancelEditSubCategory.Visible = false;
            EditSubCategoryTextBox.Visible = false;
        }

        protected void DeleteCategory_Click(object sender, EventArgs e)
        {
            GridViewRow row = CategoryGridView.SelectedRow;

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                using (SqlCommand command = Utility.ServerConnection.DeleteCategory(connection, row.Cells[1].Text))
                {
                    command.ExecuteNonQuery();
                }

            }

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void DeleteSubCategory_Click(object sender, EventArgs e)
        {
            GridViewRow row = SubCategoryGridView.SelectedRow;

            using (SqlConnection connection = Utility.ServerConnection.Connection())
            {
                connection.Open();

                using (SqlCommand command = Utility.ServerConnection.DeleteSubCategory(connection, row.Cells[1].Text))
                {
                    command.ExecuteNonQuery();
                }

            }

            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

    }

}