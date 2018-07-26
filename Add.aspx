<%@ Page Title="Add" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Add.aspx.cs" validateRequest="false" Inherits="RFP.About" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <table style ="margin-top: 10%; margin-left:25%; margin-bottom:2%">
        <tr>
            <td style="width: 451px; height: 64px">
                <label for="Categories" class ="BlackLabel">Category:</label>
                <asp:DropDownList ID="Categories" runat="server" margin="20px" Height="30px" Width="180px" OnSelectedIndexChanged="Categories_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
            </td>   
            <td style="height: 64px">
                <asp:Label ID="UserFeedBackCategories" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; height: 48px">
                <label for="SubCategories" class ="BlackLabel">Subcategory:</label>
                <asp:DropDownList ID="SubCategories" runat="server" margin="20px" Height="30px" Width="180px" AutoPostBack="true"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; height: 53px">
                <FTB:FreeTextBox id="QuestionBox" runat="Server"  Text="Question"/>
            </td>
            <td style="height: 53px">
                <asp:Label ID="UserFeedBackQuestionBox" runat="server" Text="" style="color:red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 451px; height: 49px">
                <FTB:FreeTextBox ID="AnswerBox" runat="server" Text="Answer" />
                <asp:FileUpload ID="FileUpload1" runat="server" AllowMultiple="true"/>
            </td>
        </tr>
        <tr>
            <td style="width: 451px">
                <asp:Label ID="AddToFavorites" runat="server" Text="Add to Favorites?"></asp:Label>
                <asp:CheckBox ID="Favorite" runat="server" />

            </td>
        </tr>
        <tr>
            <td style="width: 451px">
                <asp:Label ID="VisibleLabel" runat="server" Text="Visible To:"></asp:Label>
                <asp:Label ID="SBSLabel" runat="server" Text="SBS"></asp:Label><asp:CheckBox ID="SBSCheckBox" runat="server" />
                <asp:Label ID="DealerLabel" runat="server" Text="Dealers"></asp:Label><asp:CheckBox ID="DealerCheckBox" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 451px">
                                <asp:Button ID="Submit" runat="server" Text="Submit" OnClick="Submit_Click"/>
                <asp:Label ID="ConfirmationLabel" runat="server" Text=""></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
