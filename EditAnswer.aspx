<%@ Page Title="Edit Answer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" validateRequest="false" CodeBehind="EditAnswer.aspx.cs" Inherits="RFP.EditAnswer" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <FTB:FreeTextBox ID="AnswerBox" runat="server" />
        <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
        <asp:Button ID="SaveButton" runat="server" Text="Save" OnClick="SaveButton_Click" />
        <asp:Label ID="ChangedLabel" runat="server"></asp:Label>
    </div>
</asp:Content>
<%--  --%>