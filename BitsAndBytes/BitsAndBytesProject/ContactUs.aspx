<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BitsAndBytes.ContactUs_Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>

    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="css/main_css.css" />

    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/popper.min.js"></script>
     <style type="text/css">
        .auto-style1 {
            width: 131px;
            height: 90px; 
        }</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <nav class="navbar navbar-expand-lg" style="background-color: #09101E;">
                        <div class="collapse navbar-collapse" id="topLinks">
                            <ul class="navbar-nav ml-auto">
                                <li class="navbar"><a class="nav-link" href="Default.aspx">Login<img src="images/bbimages/logout%20(1).png" class="navbarIcon" id="btnLogout" alt="Logout Icon" /></a></li>
                               <li class="nav-item">
                                   &nbsp;</li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <h1>
                         <img src="images/bbimages/mail.png" class="auto-style1" alt="Message Icon" />Have some questions?</h1> </div>
            </div>

                <div class="col">
                    <div>
                         &nbsp;</div>


                <div class="col">
                    <div class="row">
                        <div class="form-group">
                            <div class="col-xs-4">
                                <label for="txtFirstName" class="label">First Name</label>
                                <input type="text" class="textbox" id="txtFirstName" aria-describedby=""/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="txtLastName" class="label">Last Name</label>
                                <input type="text" class="textbox" id="txtLastName" aria-describedby=""/>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <div class="form-group">
                                <label for="txtEmail" class="label">Email </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="email" class="texbox" id="txtEmail" aria-describedby=""/>
                            </div> 
                        </div>
                    </div>
                    
                    <div class="row">
                        <div class="form-group">
                            <div class="col-xs-6">
                                <label for="txtQuestions" class="label">Questions</label>
                                <textarea class="textbox" id="txtQuestions"></textarea>
                            </div> 
                        </div>
                    </div>
                    <div class="row">
                           
                           
							<asp:Button ID="btnSubmit" CssClass="mainButton" runat="server" Text="Submit Question" OnClick="btnSubmit_Click" Width="154px"/>
                    </div>
                </div>
            </div>

            <div class="row">
                &nbsp;<a><asp:Label ID="lblsubmit" runat="server" CssClass="label" >Submitted!</asp:Label>
                           
                            </a>
                            </div>
              <div class="row">
                <label id="lblContactDetails">27 Chamberlain Road,<br />Berea, East London, 5241<br />
                    <br /> enquries@bitsandbytes.co.za<br />043 145 3225</label>
            </div>
            <div class="row">
                  <img src="images/bbimages/bblogo.jfif" class="img-fluid w-25 p-3" alt="bb.Exe Logo" />
            </div>

            
&nbsp;</div>
        </div>
    </form>
</body>
</html>

