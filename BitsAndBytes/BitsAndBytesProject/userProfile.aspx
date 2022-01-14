<%@ Page Title="" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="userProfile.aspx.cs" Inherits="SignUp.userProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="row" style="background-color: #A4DDED">
                        <div class="col">
                            <center>
                                <img src="Images/Screenshot%20(15).png" />
                            </center>
                        </div>
                    </div>
                    
                    <div class="row" style="background-color: #A4DDED">
                        <div class="col">
                            <center>
                                <h2>Personal Details</h2>
                            </center>
                            <hr />
                        </div>
                    </div>
                    </div>
                
            <br />
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label1" runat="server" CssClass="form-label" Text="First Name(s)"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label2" runat="server" CssClass="form-label" Text="Last Name(s)"></asp:Label>
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label3" runat="server" CssClass="form-label" Text="ID Number"></asp:Label>
                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label4" runat="server" CssClass="form-label" Text="Cellphone Number"></asp:Label>
                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label6" runat="server" CssClass="form-label" Text="Email Address"></asp:Label>
                            <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label7" runat="server" CssClass="form-label" Text="Gender"></asp:Label>
                            <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                    </div>
                     <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="Label5" runat="server" CssClass="form-label" Text="Qualification"></asp:Label>
                            <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
            <br />
            <br />
                </div> 

                   </div>             
       
    
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <div class="row" style="background-color: #A4DDED">
                        <div class="col">
                            <center>
                                <img src="Images/Screenshot%20(28).png" />
                            </center>
                        </div>
                    </div>
                    
                    <div class="row" style="background-color: #A4DDED">
                        <div class="col">
                            <center>
                                <h2>Login Credentials</h2>
                            </center>
                            <hr />
                        </div>
                    </div>
                    </div>
                
            <br />
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Label ID="Label8" runat="server" CssClass="form-label" Text="Username"></asp:Label>
                            <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                        </div>
                        
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                            <asp:Label ID="Label10" runat="server" CssClass="form-label" Text="New Password"></asp:Label>
                            <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-md-6">
                            <asp:Label ID="Label11" runat="server" CssClass="form-label" Text="Confirm Password"></asp:Label>
                            <asp:TextBox ID="TextBox11" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
            <br /><br />
                    <div class="row">
                        <div class="col-md-12">
                            <center>
                            <asp:Button ID="Button1" runat="server" CssClass="btn-danger btn btn-lg" Text="Back" OnClick="Button1_Click" />
                               &nbsp; &nbsp; &nbsp; &nbsp;
                       
                            <asp:Button ID="Button2" runat="server" CssClass="btn-primary btn btn-lg" Text="Update" />
                                </center>
                        </div>
                       
                    </div>
                     
            <br />
            <br />
                <asp:TextBox ID="txtEmail" runat="server" ReadOnly="True"></asp:TextBox>
                   </div>             
        </div>
    </div>
      </div>
        
    

</asp:Content>
