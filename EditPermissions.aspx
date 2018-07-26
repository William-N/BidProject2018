<%@ Page Title="Add" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditPermissions.aspx.cs" Inherits="RFP.EditPermissions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />

        <br />

        <asp:Label ID="QuestionLabel" runat="server" Text="Label"></asp:Label>

        <br />

        <table>
            <tr>
                <td>
                    <asp:Label ID="VisibleLabel" runat="server" Text="Visible To:"></asp:Label>
                    <asp:Label ID="SBSLabel" runat="server" Text="SBS"></asp:Label><asp:CheckBox ID="SBSCheckBox" runat="server" />
                    <asp:Label ID="DealerLabel" runat="server" Text="Dealers"></asp:Label><asp:CheckBox ID="DealerCheckBox" runat="server" />
                </td>
            </tr>
        </table>

        <br />

        <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
    </div>
</asp:Content>
<%--  --%>