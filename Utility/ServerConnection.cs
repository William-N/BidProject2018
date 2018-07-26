/* 
 * Static methods designed to support site's 
 * ability to pull information from SQL server.
 * 
 * Additional comments made when name does not
 * explicitly explain purpose of command.
*/

using System;
using System.Data;
using System.Data.SqlClient;

namespace RFP.Utility
{
    public class ServerConnection
    {
        public static SqlConnection Connection()
        {
            string connectionString = "I'd probably have lawyers swarming me had I left that here";
            return new SqlConnection(connectionString);
        }
        public static SqlCommand AddAnswer_Attachment(SqlConnection con, int answerID, int attachmentID)
        {
            //Adds value to joint table connecting answers to their attachment(s).
            string command = "INSERT INTO Answers_Attachments VALUES(" + answerID + "," + attachmentID + ")";
            return new SqlCommand(command, con);

        }
        public static SqlCommand AddAnswerCommand(SqlConnection con, string answerText, int questionID, int createdBy)
        {

            string date = DateTime.Today.ToString("yyyy-MM-dd");

            SqlCommand com = new SqlCommand("dbo.AddAnswer", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@Date", date);
            com.Parameters.AddWithValue("@Text", answerText);
            com.Parameters.AddWithValue("@CreatedBy", createdBy);

            return com;

        }
        public static SqlCommand AddAttachment(SqlConnection con, string fileName, byte[] fileData)
        {

            SqlCommand com = new SqlCommand("dbo.AddAttachment", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Name", fileName);
            com.Parameters.AddWithValue("@Attachments", fileData);

            return com;

        }
        public static SqlCommand AddCategoryCommand(SqlConnection con, string categoryName, int roleID)
        {

            SqlCommand com = new SqlCommand("dbo.AddCategory", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryName", categoryName);
            com.Parameters.AddWithValue("@RoleID", roleID);

            return com;

        }
        public static SqlCommand AddFavorite(SqlConnection con, int questionID, int userID)
        {
            SqlCommand com = new SqlCommand("dbo.AddFavorite", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@UserID", userID);
            return com;
        }
        public static SqlCommand AddQuestionCommand(SqlConnection con, int categoryID, int subCategoryID, string questionText, int roleID, int createdBy)
        {

            string date = DateTime.Today.ToString("yyyy-MM-dd");

            SqlCommand com = new SqlCommand("dbo.AddQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryID", categoryID);
            com.Parameters.AddWithValue("@SubCategoryID", subCategoryID);
            com.Parameters.AddWithValue("@Text", questionText);
            com.Parameters.AddWithValue("@RoleID", roleID);
            com.Parameters.AddWithValue("@Date", date);
            com.Parameters.AddWithValue("@CreatedBy", createdBy);

            return com;

        }
        public static SqlCommand AddSubCategoryCommand(SqlConnection con, string subCategoryName, int categoryID)
        {

            SqlCommand com = new SqlCommand("dbo.AddSubcategory", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@SubcategoryName", subCategoryName);
            com.Parameters.AddWithValue("@Category_id", categoryID);

            return com;

        }
        public static SqlCommand AddRoleQuestion(SqlConnection con, int questionID, int roleID)
        {
            //Gives questions a role, to enable privacy settings adjustable by an admin account.
            SqlCommand com = new SqlCommand("dbo.AddRoleQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@RoleID", roleID);
            return com;
        }
        public static SqlCommand AnswerViewCount(SqlConnection con, string answerText)
        {
            //Increments view counter of an answer, granting a picture of what data is being interacted with.
            SqlCommand com = new SqlCommand("dbo.AnswerViewCounter", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@AnswerText", answerText);
            return com;
        }
        public static SqlCommand CheckFavorite(SqlConnection con, int questionID, int userID)
        {
            SqlCommand com = new SqlCommand("dbo.CheckUserAndFavorite", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@UserID", userID);
            return com;
        }
        public static SqlCommand CheckRoleQuestion(SqlConnection con, int questionID, int roleID)
        {
            
            SqlCommand com = new SqlCommand("dbo.CheckRoleQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@RoleID", roleID);
            return com;
        }

        public static SqlCommand DeleteFavorite(SqlConnection con, int questionID, int userID)
        {
            SqlCommand com = new SqlCommand("dbo.DeleteFavorite", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@UserID", userID);
            return com;
        }
        public static SqlCommand DeleteCategory(SqlConnection con, string name)
        {
            //NOTE: Category is not deleted, but rather made inactive.
            string command = "UPDATE Categories SET Active = 0 WHERE CategoryName=" + "'" + name + "'";
            return new SqlCommand(command, con);

        }
        public static SqlCommand DeleteSubCategory(SqlConnection con, string name)
        {
            //NOTE: Subcategory is not deleted, but rather made inactive.
            string command = "UPDATE SubCategories SET Active = 0 WHERE SubCategoryName=" + "'" + name + "'";
            return new SqlCommand(command, con);

        }
        public static SqlCommand DeleteQuestion(SqlConnection con, string text)
        {
            //NOTE: Question is not deleted, but rather made inactive.
            string command = "update Questions set Active = 0 where QuestionText = " + "'" + text + "'";
            return new SqlCommand(command, con);

        }
        public static SqlCommand GetAllCategories(SqlConnection con)
        {

            string command = "SELECT * FROM Categories WHERE Active=1";
            return new SqlCommand(command, con);

        }
        public static SqlCommand GetAnswersByQuestion(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.GetAnswerByQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand GetAnswerIDWithText(SqlConnection con, string text)
        {

            SqlCommand com = new SqlCommand("dbo.GetAnswerID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@AnswerText", text);

            return com;

        }
        public static SqlCommand GetAttachmentIDWithAnswerID(SqlConnection con, int answerID)
        {

            SqlCommand com = new SqlCommand("dbo.GetAttachmentIDByAnswerID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@AnswerID", answerID);

            return com;

        }
        public static SqlCommand GetAttachmentIDWithName(SqlConnection con, string name)
        {

            string command = "SELECT AttachmentID from Attachments where Name = '" + name + "'";
            return new SqlCommand(command, con);

        }
        public static SqlCommand GetAttachmentsWithAttachmentID(SqlConnection con, int attachmentID)
        {

            SqlCommand com = new SqlCommand("dbo.GetAttachmentsByAttachmentID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@AttachmentID", attachmentID);
            return com;

        }
        public static SqlCommand GetAttachmentNameWithAttachmentID(SqlConnection con, int attachmentID)
        {
            string command = "select Name from Attachments where AttachmentID = " + attachmentID;
            return new SqlCommand(command, con);
        }
        public static SqlCommand GetCategories(SqlConnection con)
        {
            string command = "SELECT CategoryName FROM Categories WHERE Active=1";
            return new SqlCommand(command, con);
        }
        public static SqlCommand GetCategory(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.GetCategoryByQuestionID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand GetCategoryIDWithName(SqlConnection con, string name)
        {
            SqlCommand com = new SqlCommand("dbo.GetCategoryID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryName", name);
            return com;
        }
        public static SqlCommand GetQuestionsByCategory(SqlConnection con, int catid, int roleID)
        {
            SqlCommand com = new SqlCommand("dbo.GetQuestionsByCategory", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryID", catid);
            com.Parameters.AddWithValue("@RoleID", roleID);
            return com;

        }
        public static SqlCommand GetQuestionsAll(SqlConnection con, int roleID)
        {
            SqlCommand com = new SqlCommand("dbo.GetQuestionsAll", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@RoleID", roleID);
            return com;

        }
        public static SqlCommand GetQuestionsByCategoryAndSubCategory(SqlConnection con, int catid, int subid, int roleID)
        {
            SqlCommand com = new SqlCommand("dbo.GetQuestionsByCategoryAndSub", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryID", catid);
            com.Parameters.AddWithValue("@SubcategoryID", subid);
            com.Parameters.AddWithValue("@RoleID", roleID);
            return com;

        }
        public static SqlCommand GetQuestionDateAdded(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.GetQuestionDateAdded", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand GetQuestionDateEdited(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.GetQuestionDateEdited", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand GetQuestionIDWithName(SqlConnection con, string name)
        {

            SqlCommand com = new SqlCommand("dbo.GetQuestionID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionText", name);

            return com;

        }
        public static SqlCommand GetQuestionViews(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.GetQuestionViews", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand QuestionViewCount(SqlConnection con, string questionText)
        {
            SqlCommand com = new SqlCommand("dbo.QuestionViewCounter", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionText", questionText);
            return com;
        }
        public static SqlCommand GetRoleIDByUser(SqlConnection con, int userID)
        {
            SqlCommand com = new SqlCommand("dbo.GetRoleIDByUserID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@UserID", userID);
            return com;
        }
        public static SqlCommand GetSubCategories(SqlConnection con, int id)
        {
            SqlCommand com = new SqlCommand("dbo.GetSubcategoriesByCategory", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryID", id);
            return com;

        }
        public static SqlCommand GetSubcategory(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.GetSubCategoryByQuestionID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand GetSubCategoryIDWithName(SqlConnection con, string name)
        {

            SqlCommand com = new SqlCommand("dbo.GetSubcategoryID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@SubcategoryName", name);
            return com;


        }
        public static SqlCommand GetUserFavorites(SqlConnection con, int userID)
        {
            SqlCommand com = new SqlCommand("dbo.GetUserFavorites", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@UserID", userID);
            return com;
        }
        public static SqlCommand GetUserInfoWithPassword(SqlConnection con, string username, string password)
        {
            SqlCommand com = new SqlCommand("dbo.GetUserInfoWithPassword", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Username", username);
            com.Parameters.AddWithValue("@Password", password);
            return com;

        }
        public static SqlCommand RemoveAnswer(SqlConnection con, int answerID)
        {
            SqlCommand com = new SqlCommand("dbo.DeleteAnswer", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@AnswerID", answerID);
            return com;
        }
        public static SqlCommand RemoveQuestion(SqlConnection con, int questionID)
        {
            SqlCommand com = new SqlCommand("dbo.DeleteQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;
        }
        public static SqlCommand RemoveRoleQuestion(SqlConnection con, int questionID, int roleID)
        {
            SqlCommand com = new SqlCommand("dbo.RemoveRoleQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@QuestionID", questionID);
            com.Parameters.AddWithValue("@RoleID", roleID);
            return com;
        }
        public static SqlCommand UpdateAnswer(SqlConnection con, int answerID, string answerText, int userID)
        {
            //When changing question text, updates date edited value.
            string date = DateTime.Today.ToString("yyyy-MM-dd");
            SqlCommand com = new SqlCommand("dbo.UpdateAnswer", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@AnswerID", answerID);
            com.Parameters.AddWithValue("@AnswerText", answerText);
            com.Parameters.AddWithValue("@NewDate", date);
            com.Parameters.AddWithValue("@EditedBy", userID);
            return com;
        }
        public static SqlCommand UpdateCategories(SqlConnection con, string name, int categoryID)
        {
            //Changes name of a category.
            SqlCommand com = new SqlCommand("dbo.UpdateCategories", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Name", name);
            com.Parameters.AddWithValue("@CategoryID", categoryID);

            return com;

        }
        public static SqlCommand UpdateCategoryAndSubCategory(SqlConnection con, int questionID, int catid, int subid)
        {
            //Changes category and subcategory for a question.
            SqlCommand com = new SqlCommand("dbo.UpdateCategoryAndSubcategoryByQuestionID", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@CategoryID", catid);
            com.Parameters.AddWithValue("@SubcategoryID", subid);
            com.Parameters.AddWithValue("@QuestionID", questionID);
            return com;

        }
        public static SqlCommand UpdateQuestion(SqlConnection con, int questionID, string newText, int userID)
        {
            //When changing question text, updates date edited value.
            string date = DateTime.Today.ToString("yyyy-MM-dd");
            SqlCommand com = new SqlCommand("dbo.UpdateQuestion", con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("QuestionID", questionID);
            com.Parameters.AddWithValue("@NewText", newText);
            com.Parameters.AddWithValue("@DateEdited", date);
            com.Parameters.AddWithValue("@EditedBy", userID);
            return com;
        }
        public static SqlCommand UpdateSubCategory(SqlConnection con, string newName, string oldName)
        {

            string command = "update SubCategories set SubCategoryName=" + "'" + newName + "'" + " where SubCategoryName=" + "'" + oldName + "'";
            return new SqlCommand(command, con);

        }
    }
}
