<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SummerBidProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <asp:TextBox ID="SearchBar" runat="server" Width="250px"></asp:TextBox>
        <asp:DropDownList ID="Categories" runat="server" Height="30px" Width="150px"></asp:DropDownList>
        <asp:Button ID="SearchButton" runat="server" Text="Search" Height="25px" Width="80px" />
        <table id="SearchResults" border="1" runat="server">

        </table>
    </div>

    </asp:Content>
