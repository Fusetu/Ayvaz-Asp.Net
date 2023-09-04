<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="mainpage.aspx.cs" Inherits="mainpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" />

    <div class="container">
        <h2>Listeleme <small>Users</small></h2>
        <ul class="responsive-table">
            <li class="table-header">
                <div class="col col-1">User ID</div>
                <div class="col col-2">Login Name</div>
                <div class="col col-3">Password</div>
                <div class="col col-4">Login Name</div>
                <div class="col col-5">Last Name</div>
                <div class="col col-6">Authority Level</div>
                <div class="col col-7">Birthday</div>
                <div class="col col-8">Salary</div>
            </li>
        </ul>
    </div>
    <asp:DataList ID="DataList1" runat="server" Style="margin-left: 200px" Width="1127px">
        <HeaderStyle Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
        <ItemTemplate>
            <div class="container">
                <ul class="responsive-table">
                    <li class="table-row">
                        <div class="col col-1" data-label="User ID">
                            <asp:Label ID="Label1" runat="server" DataField="UserID" Text='<%# Eval("UserID") %>'></asp:Label>
                        </div>
                        <div class="col col-2" data-label="LOGIN NAME">
                            <asp:Label ID="Label2" runat="server" DataField="Login_name" Text='<%# Eval("Login_name") %>'></asp:Label>
                        </div>
                        <div class="col col-3" data-label="PASSWORD">
                            <asp:Label ID="Label3" runat="server" DataField="Password" Text='<%# Eval("Password") %>'></asp:Label>
                        </div>
                        <div class="col col-4" data-label="FIRST NAME">
                            <asp:Label ID="Label4" runat="server" DataField="First_name" Text='<%# Eval("First_name") %>'></asp:Label>
                        </div>
                        <div class="col col-5" data-label="LAST NAME">
                            <asp:Label ID="Label5" runat="server" DataField="Last_name" Text='<%# Eval("Last_name") %>'></asp:Label>
                        </div>
                        <div class="col col-6" data-label="AUTHORİTY LEVEL">
                            <asp:Label ID="Label6" runat="server" DataField="Authority_Level" Text='<%# Eval("Authority_Level") %>'></asp:Label>
                        </div>
                        <div class="col col-7" data-label="BIRTHDAY">
                            <asp:Label ID="Label7" runat="server" DataField="Birthday" Text='<%# Eval("Birthday") %>'></asp:Label>
                        </div>
                        <div class="col col-8" data-label="SALARY">
                            <asp:Label ID="Label8" runat="server" DataField="Salary" Text='<%# Eval("Salary") %>'></asp:Label>
                        </div>
                    </li>
                </ul>
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

