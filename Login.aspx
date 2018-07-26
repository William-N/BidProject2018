<%@ Page Title="Login" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RFP.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <table style ="margin-top: 15%; margin-left:35%; margin-bottom:2%">
            <tr>
                <td style="height: 22px">Username:</td>
                <td style="height: 22px">
                    <asp:TextBox ID="UserBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Password:</td>
                <td>
                    <asp:TextBox ID="PasswordBox" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="FeedbackLabel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                    <asp:Button ID="LoginButton" runat="server" BackColor="black" style="margin-left:26%" Font-Names="Gill Sans MT" ForeColor="White" Height="48px" Text="Login" Width="128px" OnClick="LoginButton_Click" />
                </td>
            </tr>
        </table>
    </div>
    </asp:Content>
<%--  --%>