<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmForgotPassword.aspx.cs" Inherits="BitsAndBytesProject.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <link href="assets/css/loginStyle.css" rel="stylesheet" />
<div class="loginCard">
  <div class="card"></div>
  <div class="card">
    <h1 class="title">Forgot Password</h1>
    <section>
      <div class="input-container">
        <input type="text" runat="server" id="emailAddress" required="required"/>
        <label for="emailAddress">Email Address</label>
        <div class="bar"></div>
      </div>
   
      <div class="button-container">
          <asp:LinkButton ID="btnLogin" CssClass="btnClass" OnClick="btnLogin_Click" runat="server"><span>Email Details</span></asp:LinkButton>
      </div>
        <asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="Red"></asp:Label>
    </section>
      <div style="margin-left:45%; margin-top:2%;">
      <a href="frmLogin.aspx">Go back to login</a>
      </div>  
  </div>
  </div>
    <script src="assets/scripts/script.js"></script>
</asp:Content>
