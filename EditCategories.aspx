<%@ Page Title="Edit Categories" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" validateRequest="false" CodeBehind="EditCategories.aspx.cs" Inherits="RFP.EditCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <table style ="margin-top: 10%; margin-left:35%; margin-bottom:2%">

        <tr>
            <td style="padding-bottom: 1em">

            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="AddCategory" runat="server" Text="Add Category" OnClick="AddCategory_Click" />
            </td>
            <td>
                <asp:Button ID="AddSubCategory" runat="server" Text="Add Subcategory" OnClick="AddSubCategory_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="InsertNewCategory" runat="server" OnClick="InsertNewCategory_Click">Insert</asp:LinkButton>
                <asp:LinkButton ID="CancelNewCategory" runat="server" OnClick="CancelNewCategory_Click">Cancel</asp:LinkButton>
                <asp:TextBox ID="NewCategoryText" runat="server" TextMode="multiline" ></asp:TextBox>
            </td>
            <td>
                <asp:LinkButton ID="InsertNewSubCategory" runat="server" OnClick="InsertNewSubCategory_Click">Insert</asp:LinkButton>
                <asp:LinkButton ID="CancelNewSubCategory" runat="server" OnClick="CancelNewSubCategory_Click">Cancel</asp:LinkButton>
                <asp:TextBox ID="NewSubCategoryText" runat="server" TextMode="multiline" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="CategoryGridView" runat="server" AutoGenerateColumns="False" ShowHeader="False" OnSelectedIndexChanged="CategoryGridView_SelectedIndexChanged" >
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                    </Columns>
               </asp:GridView>
            </td>
            <td style="vertical-align: top">
                <asp:GridView ID="SubCategoryGridView" runat="server" AutoGenerateColumns="False" ShowHeader="False" OnSelectedIndexChanged="SubCategoryGridView_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="SubCategoryName" HeaderText="SubCategoryName" SortExpression="SubCategoryName" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="EditCategory" runat="server" Text="Edit" OnClick="EditCategory_Click" />
                <asp:Button ID="DeleteCategory" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this category?');" OnClick="DeleteCategory_Click" />
            </td>
            <td>
                <asp:Button ID="EditSubCategory" runat="server" Text="Edit" OnClick="EditSubCategory_Click" />
                <asp:Button ID="DeleteSubCategory" runat="server" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete this subcategory?');" OnClick="DeleteSubCategory_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="InsertEditCategory" runat="server" OnClick="InsertEditCategory_Click">Insert</asp:LinkButton>
                <asp:LinkButton ID="CancelEditCategory" runat="server" OnClick="CancelEditCategory_Click">Cancel</asp:LinkButton>
                <asp:TextBox ID="EditCategoryTextBox" runat="server" TextMode="multiline" ></asp:TextBox>
            </td>
            <td>
                <asp:LinkButton ID="InsertEditSubCategory" runat="server" OnClick="InsertEditSubCategory_Click">Insert</asp:LinkButton>
                <asp:LinkButton ID="CancelEditSubCategory" runat="server" OnClick="CancelEditSubCategory_Click">Cancel</asp:LinkButton>
                <asp:TextBox ID="EditSubCategoryTextBox" runat="server" TextMode="multiline" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="ConfirmCategoryAdd" runat="server"></asp:Label>
            </td>
            <td>
                <asp:Label ID="ConfirmSubCategoryAdd" runat="server"></asp:Label>
            </td>
        </tr>

    </table>

</asp:Content>
