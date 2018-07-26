using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RFP
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string username = UserBox.Text;
            string password = Utility.Encryptor.Encrypt(PasswordBox.Text);

            SqlConnection connection = Utility.ServerConnection.Connection();
            connection.Open();

            SqlCommand cmd = Utility.ServerConnection.GetUserInfoWithPassword(connection, username, password);

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                int userID = reader.GetInt32(0);
                Session["UserID"] = userID;
                reader.Close();
                cmd = Utility.ServerConnection.GetRoleIDByUser(connection, userID);
                reader = cmd.ExecuteReader();
                reader.Read();
                Session["RoleID"] = reader.GetInt32(0);
                Response.Redirect("Welcome.aspx");
            }

            else
            {
                FeedbackLabel.Text = "Username and password did not match our records";
            }
            connection.Close();
        }
    }
}