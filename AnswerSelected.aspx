<%@ Page Title="Add" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AnswerSelected.aspx.cs" validateRequest="false" Inherits="RFP.AnswerSelected" %>
<%@ Register TagPrefix="FTB" Namespace="FreeTextBoxControls" Assembly="FreeTextBox" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server" >
    <asp:Literal ID="Literal1" runat="server" Mode="Encode" />
    <div class="container">
        <asp:Panel ID="Panel1" runat="server" Height="78px">            

            <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" Width="47px" />
            <asp:Button ID="CopyButton" runat="server" Text="Copy to Clipboard" ClientIDMode="Static"/>
            <asp:Button ID="EditButton" runat="server" OnClick="EditButton_Click" Text="Edit" />
            <asp:Button ID="DeleteButton" runat="server" Text="Delete Answer" OnClientClick="return confirm('Are you sure you want to delete this Question?');" OnClick="DeleteButton_Click" />

            <br />
            <br />

            <asp:Label ID="AnswerLabel" runat="server" Text="Label" ClientIDMode="Static"></asp:Label>

            <asp:GridView ID="Attachments" runat="server" AutoGenerateColumns="False" OnRowCommand="Attachments_RowCommand" >
                <Columns>
                    <asp:TemplateField HeaderText="File">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("File") + ";" + Eval("ID") %>' CommandName="Download" Text='<%# Eval("File") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="ID" DataField="ID" Visible="false"/>
                </Columns>
            </asp:GridView>
        </asp:Panel>
    </div>

    <asp:Label ID="AnswerIDLabel" runat="server" ></asp:Label>

    <script>
    document.getElementById("CopyButton").onclick = function() {myFunction()};

        function myFunction() {
             var
              myelement = document.getElementById("AnswerLabel"),
              range = document.createRange();

            range.selectNode(myelement);
            window.getSelection().addRange(range);



              /* Copy the text inside the text field */
            document.execCommand("copy");

            return false;
    }
    </script>
</asp:Content>
<%--  --%>