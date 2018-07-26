<%@ Page Title="Search" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="True" CodeBehind="Search.aspx.cs" Inherits="RFP.Search" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <%#: Eval("SearchResults") %>

    <div class="container">
        <asp:Panel ID="Panel1" runat="server" DefaultButton="SearchButton">
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
                <td style="width: 284px">
                    <asp:TextBox ID="SearchBox" runat="server" Width="285px" Height="30px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button style="margin-left:14%" ID="SearchButton" runat="server" BackColor="black" Font-Names="Gill Sans MT" ForeColor="White" Height="63px" OnClick="SearchButton_Click" Text="Search" Width="128px" />
                </td>
            </tr>

        </table>
        </asp:Panel>
        <asp:GridView ID="GridView1" GridLines="None" RowStyle-Height ="50px" runat="server" OnRowCommand="GridView1_RowCommand" ShowHeader="false" Width="1023px" CellPadding="120" OnRowDataBound="GridView1_RowDataBound" CellSpacing="2">
            <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="ViewButton" Text="View" CommandName="View" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                </ItemTemplate>
                    <ItemStyle VerticalAlign="Top" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="EditButton" Text="Edit" CommandName="Edit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server"/>
                </ItemTemplate>
                    <ItemStyle VerticalAlign="Top" />
            </asp:TemplateField>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:Button ID="DeleteButton" Text="Delete" CommandName="DeleteQuestion" OnClientClick="return confirm('Are you sure you want to delete this Question?');" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                </ItemTemplate>
                    <ItemStyle VerticalAlign="Top"/>
            </asp:TemplateField>
        </Columns>
        </asp:GridView>
    </div>
</asp:Content>
