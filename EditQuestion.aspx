<%@ Page Title="Edit Question" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" ValidateRequest="false" CodeBehind="EditQuestion.aspx.cs" Inherits="RFP.EditQuestion" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table style ="margin-top: 10%; margin-left:35%; margin-bottom:2%">
        <tr>
            <td>
                <asp:Button ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" />
            </td>
        </tr>
        <tr><td style="width: 67px"><label for ="CategoryDropdown" class ="BlackLabel">Category:</label>
                <asp:DropDownList ID="CategoryDropdown" AutoPostBack ="true"  runat="server" OnSelectedIndexChanged="CategoryDropdown_SelectedIndexChanged" Width="180px" Height="33px">
                </asp:DropDownList>
                </td>
        </tr>
        <tr><td><label for ="SubCategoryDropdown" class ="BlackLabel">SubCategory:</label>
            <asp:DropDownList ID="SubCategoryDropdown" runat="server" Height="33px" Width="180px">
            </asp:DropDownList>
            </td>

        </tr>
        <tr>
            <td>
                <FTB:FreeTextBox ID="QuestionBox" runat="server" Text="Question" />
            </td>
            <td>
                <asp:Label ID="UserFeedBackQuestionBox" runat="server" Text="" style="color:red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>   
            <td>
                <asp:Label ID="UserFeedBackCategories" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="VisibleLabel" runat="server" Text="Visible To:"></asp:Label>
                <asp:Label ID="SBSLabel" runat="server" Text="SBS"></asp:Label><asp:CheckBox ID="SBSCheckBox" runat="server" />
                <asp:Label ID="DealerLabel" runat="server" Text="Dealers"></asp:Label><asp:CheckBox ID="DealerCheckBox" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/>
            </td>
        </tr>

    </table>
</asp:Content>
