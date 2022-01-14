<%@ Page Title="Sign Up" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="SignUp.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <center>
            <img src="Images/Screenshot%20(27).png" />
               
        <h2>
            Get started with your account
        </h2>
                <hr />
                     </center>
                </div>
        <div class="row">
        <div class="col-md-6">
        
              <div style="margin-left:100px; margin-right:100px">  
                  <h5 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #800000; font-weight: bold">1. Start Here</h5>
                  <a style="color: #ff0000">NB:Please fill out everything</a>
                  <br />
        <label for="formGroupExampleInput" class="form-label">Select User Type</label>
        
        <asp:DropDownList ID="DropUserType" CssClass="form-select" runat="server">
            <asp:ListItem>Teacher</asp:ListItem>
                  </asp:DropDownList>
          
        <label for="formGroupExampleInput" class="form-label">Select Centre</label>
         
        <asp:DropDownList ID="DropCentre" CssClass="form-select" runat="server"></asp:DropDownList>
        <br />
        <h5 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #800000; font-weight: bold">2. Create your Log in details</h5>
                  <a style="color: #ff0000">NB:Please fill out everything</a>
                  <br />
        <div class="col-md-12">
  <label for="formGroupExampleInput" class="form-label">Username</label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="e.g. sinoyolob2" /><asp:Label ID="Label7" runat="server" Text="!!!"></asp:Label>
</div>

       
       
<div class="col-md-12">
  <label for="formGroupExampleInput2" class="form-label">Password</label>
  <asp:TextBox ID="txtPass1" runat="server" CssClass="form-control" type="password" /><asp:Label ID="Label8" runat="server" Text="!!!"></asp:Label>
</div>
        <div class="col-md-12">
  <label for="formGroupExampleInput2" class="form-label">Confirm Password</label>
  <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" type="password" /><asp:Label ID="Label9" runat="server" Text="!!!"></asp:Label>
</div>
        <br />
        
</div>
            </div>
            
        <div class="col-md-6">
            
 <div style="margin-left:100px; margin-right:100px">
     <h5 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; color: #800000; font-weight: bold">3. Your Personal Details</h5>
     <a style="color: #ff0000">NB:Please fill out everything</a>
     <br />
    <div class="row">

  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">First Name(s)</label>
    <asp:TextBox ID="names" runat="server" CssClass="form-control"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="!!!"></asp:Label>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Last Name(s)</label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><asp:Label ID="Label2" runat="server" Text="!!!"></asp:Label>
  </div>
        <br />
         <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Identity Number</label>
    <asp:TextBox ID="idnumber" runat="server" CssClass="form-control"></asp:TextBox><asp:Label ID="Label3" runat="server" Text="!!!"></asp:Label>
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Cellphone Number</label>
    <asp:TextBox ID="phone" runat="server" CssClass="form-control"></asp:TextBox><asp:Label ID="Label4" runat="server" Text="!!!"></asp:Label>
  </div>
        <br />
        <div class="col-12">
           <label for="inputAddress" class="form-label">Email Address</label>
           <asp:TextBox ID="email" runat="server" CssClass="form-control"></asp:TextBox><asp:Label ID="Label5" runat="server" Text="!!!"></asp:Label>
  </div>
        <br/>
        <div class="col-12">
           <label for="inputAddress" class="form-label">Gender</label>
            </div>
       
        <asp:RadioButtonList ID="rbGender" runat="server">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>

        </asp:RadioButtonList>
        <br />
    <div class="col-12">
           <label for="inputAddress" class="form-label">Qualification</label>
           <asp:TextBox ID="quali" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox><asp:Label ID="Label6" runat="server" Text="!!!"></asp:Label>
  </div>
       
  
        <br />
        <br />
         
        <br />
        <br />
        </div>

 </div>
</div>
        </div>
        <div class="row">
            <center>
                <asp:Button ID="backs" runat="server" CssClass="btn btn-danger btn-lg col-md-4" Text="Back" OnClick="backs_Click" />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="submit" runat="server" CssClass="btn btn-primary btn-lg col-md-4" Text="Submit" OnClick="submit_Click"/>
             <br /><br /><br />
            </center>
            <br />
        </div>
      </div>
   </div>
</asp:Content>
