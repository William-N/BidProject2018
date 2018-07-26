<%@ Page Title="Add Answer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" validateRequest="false" CodeBehind="AddAnswer.aspx.cs" Inherits="RFP.AddAnswer" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <table style ="margin-top: 10%; margin-left:35%; margin-bottom:2%">
        <tr>
            <td>
                <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click"></asp:Button>   
            </td>
        </tr>
        <tr>
            <td>
                <FTB:FreeTextBox ID="AddAnswerTextBox" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:FileUpload ID="AddAnswerFile" runat="server" AllowMultiple="true"/>
            </td>
        </tr>
        <tr>

        </tr>
        <tr>
            <td>
                <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click"></asp:Button>
            </td>
        </tr>
    </table>

</asp:Content>
