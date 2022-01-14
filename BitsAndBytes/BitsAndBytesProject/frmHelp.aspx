<%@ Page Title="Help" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="frmHelp.aspx.cs" Inherits="BitsAndBytesProject.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" href="css/style.css">
    <link href="assets/css/Help.css" rel="stylesheet" />
    <script src="Scripts/Help.js"></script>
   <div class="jumbotron header center" style="margin-bottom:0px !important;padding-top:10px;padding-bottom:10px; ;margin-top:0px !important; ">
        <h1 style="font-weight:600; color:#ed2553;">Help Page</h1>
    </div>
 
 <!-- start collapsibles code --> 
<h5 class="collapsible">Commonly Asked Questions</h5>
<div >
  <p class="indent question">Q: Is there a "light" display setting?</p>
  <div class="indent answer">
  <p>A: Not currently, however, we are looking into bringing this feature soon!</p>
  </div>
  <p class="indent question">Q: Do I need an account to utilize Bits & Bytes</p>
  <div class="indent answer">
  <p>A: Yes, in order to personalize your experience and/or get support from one our teachers. Don't worry, its free! </p>
  </div> 
</div>
  
<h5 class="collapsible">How to Create account</h5>
<div class="indent answer">
  <p>A: To create a account you click on the "Register" navigation icon and fill out the form</p>
    <img src="assets/img/helpPAGE.png" style="width:1000px;height:500px;"/>
</div>
</asp:Content>
