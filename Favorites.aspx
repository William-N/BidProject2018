<%@ Page Title="Favorites" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Favorites.aspx.cs" Inherits="RFP.Favorites" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Favorites</h2>
    <asp:GridView ID="GridView1" GridLines="None" RowStyle-Height ="50px" runat="server" OnRowCommand="GridView1_RowCommand" ShowHeader="false"  Width="1023px" OnRowDataBound="GridView1_RowDataBound">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="ViewButton" Text="View" CommandName="View" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="DeleteButton" Text="Remove from Favorites" CommandName="Delete" OnClientClick="return confirm('Are you sure you want to remove this Question from your favorites?');" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
