<%@ Page Title="Confirmation" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="SignUp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:17px ">
        <center>
            <br />
            <br />
<h1>
    Hello there
</h1>
    <img src="Images/Screenshot%20(24).png" />
    <h2>Thank you for showing interest</h2>
    <h3>We have recieved your application, come back to check the results later.</h3>
            <asp:Button ID="goLand" runat="server" CssClass="btn btn-primary btn-lg" Text="Back To Landing Page" OnClick="goLand_Click" />
             <br />
    <br />
    <br />
            </center>
        </div>
</asp:Content>
