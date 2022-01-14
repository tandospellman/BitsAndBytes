<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmLogin.aspx.cs" Inherits="BitsAndBytesProject.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="assets/css/loginStyle.css" rel="stylesheet" />
    <div class="loginCard">
        <div class="card"></div>
        <div class="card">
            <h1 class="title">Login</h1>
            <section>
                <div class="input-container">
                    <input type="text" runat="server" id="username" required="required" />
                    <label for="username">Username</label>
                    <div class="bar"></div>
                </div>
                <div class="input-container">
                    <input type="password" runat="server" id="password" required="required" />
                    <label for="password">Password</label>
                    <div class="bar"></div>
                </div>
                <div class="button-container">
                    <asp:LinkButton ID="btnLogin" CssClass="btnClass" OnClick="btnLogin_Click" runat="server"><span>Login</span></asp:LinkButton>
                </div>
                <div style="margin-left:45%; margin-top:2%;">
                <a href="frmForgotPassword.aspx">Forgot password?</a>
                    <br />
                <asp:Label ID="lblError" runat="server" Text="" Visible="true" ForeColor="Red"></asp:Label>
                    </div>
            </section>
        </div>
    </div>
    <script src="assets/scripts/script.js"></script>
</asp:Content>
