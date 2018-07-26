<%@ Page Title="Add" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" validateRequest="false" CodeBehind="QuestionSelected.aspx.cs" Inherits="RFP.QuestionSelected" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <asp:Panel ID="Panel1" runat="server" >
            <asp:Button ID="BackButton" runat="server" OnClick="BackButton_Click" Text="Back" />
            <asp:Button ID="FavoriteButton" runat="server" OnClick="FavoriteButton_Click" Text="Add Question to Favorites" />
            <asp:Button ID="EditButton" runat="server" OnClick="EditButton_Click" Text="Edit Question" />
            <asp:Button ID="DeleteButton" runat="server" OnClick="DeleteButton_Click" Text="Delete Question" OnClientClick="return confirm('Are you sure you want to delete this Question?');"/>
            <asp:Button ID="AddAnswerButton" runat="server" OnClick="AddAnswerButton_Click" Text="Add Answer" />
            <asp:Label ID="FavoritesLabel" runat="server"></asp:Label>


            <div >
                    <asp:Label ID="InfoLabel" runat="server" Text="Question Information:"></asp:Label>
                    <br />
                    <asp:Label ID="DateEdited" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="DateAdded" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="ViewsLabel" runat="server" Text="View Count:"></asp:Label>
                    <br />
                    <asp:Label ID="CategoryLabel" runat="server" Text="Category:"></asp:Label>
                    <br />
                    <asp:Label ID="SubCategoryLabel" runat="server" Text="SubCategory:"></asp:Label>
            </div>

            <asp:Panel ID="QuestionPanel" runat="server" BackColor="#333333">
                <asp:Label ID="QuestionLabel" runat="server" Text="Label" ForeColor="White" ></asp:Label>
            </asp:Panel>
            
            <br />

        </asp:Panel>

            <asp:Panel runat="server">

                <asp:GridView ID="GridView1" GridLines="None" runat="server" OnRowCommand="GridView1_RowCommand" ShowHeader="True" RowStyle-Height ="50px" Width="1023px" CellPadding="120" OnRowDataBound="GridView1_RowDataBound" CellSpacing="100">
                    <Columns>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button ID="FileDownload" Text="Attachments" CommandName="MoveToFiles" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                        </ItemTemplate>
                            <ItemStyle VerticalAlign="Top" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button ID="CopyButton"  Text="Copy" CommandName="Copy" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                        </ItemTemplate>
                            <ItemStyle VerticalAlign="Top"/>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button ID="EditButton"  Text="Edit" CommandName="Edit" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                        </ItemTemplate>
                            <ItemStyle VerticalAlign="Top" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button ID="DeleteButton" Text="Delete" CommandName="DeleteAnswer" OnClientClick="return confirm('Are you sure you want to delete this Answer?');" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" runat="server" />
                        </ItemTemplate>
                            <ItemStyle VerticalAlign="Top" />
                    </asp:TemplateField>
                    </Columns>
                    <RowStyle Height="50px" />
                </asp:GridView>
            </asp:Panel>
    </div>

    <script>

        function myFunction(control) {
            console.log(control);

            var
                myelement = document.getElementById(control),
                range = document.createRange();

            range.selectNode(myelement);
            window.getSelection().addRange(range);



                /* Copy the text inside the text field */
            document.execCommand("copy");

            return false;
        }
    </script>
    <script>
        document.body.innerHTML = document.body.innerHTML.replace(/12:00:00 AM/g, '&nbsp;&nbsp;&nbsp;');
    </script>
</asp:Content>
<%--  --%>