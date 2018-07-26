<%@ Page Title="File Download" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" validateRequest="false" CodeBehind="FileDownLoad.aspx.cs" Inherits="RFP.Attachments" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Button ID="BackButton" runat="server" Text="Back" OnClick="BackButton_Click" />
    <asp:GridView ID="Files" runat="server" AutoGenerateColumns="False" OnRowCommand="Files_RowCommand" >
        <Columns>
            <asp:TemplateField HeaderText="File">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") + ";" + Eval("ID") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField HeaderText="ID" DataField="ID" Visible="false"/>
        </Columns>
    </asp:GridView>
</asp:Content>