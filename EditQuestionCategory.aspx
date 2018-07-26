<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="EditQuestionCategory.aspx.cs" Inherits="RFP.EditQuestionCategory" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%#: Eval("SearchResults") %>

    <div class="container">
        <asp:Button ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" />
        <table style ="margin-top: 5%; margin-bottom:2%">
          
            <tr>
                <td style="width: 67px">
                    <label for ="CategoryDropdown" class ="BlackLabel">Category:</label>
                </td>
                <td style="width: 373px" class="modal-sm">
                    <asp:DropDownList ID="CategoryDropdown" AutoPostBack ="true"  runat="server" OnSelectedIndexChanged="CategoryDropdown_SelectedIndexChanged" Width="180px" Height="33px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <label for ="SubCategoryDropdown" class ="BlackLabel">SubCategory:</label>
                </td>
                <td style="width: 284px">
                    <asp:DropDownList ID="SubCategoryDropdown" runat="server" Height="33px" Width="180px"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button style="margin-left:14%" ID="SubmitButton" runat="server" BackColor="black" Font-Names="Gill Sans MT" ForeColor="White" Height="63px" OnClick="SubmitButton_Click" Text="Submit" Width="128px" />
                </td>
          </tr>
        </table>       
    </div>
</asp:Content>
