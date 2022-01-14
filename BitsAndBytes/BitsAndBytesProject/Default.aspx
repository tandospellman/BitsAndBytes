<%@ Page Title="Welcome to Bits and Bytes" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SignUp.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
       <div class="container">
           <div class="row">
               <center>
                   <br /><br />
                   <h1 style="color: darkblue">THE BITS AND BYTES ECDC MANAGEMENT SYSTEM</h1>
               </center>
           </div>
           <br /><br />
           <div class="row">
               <div class="col-md-4">
                   <img src="Images/download1.jpg" width="220" height="200" />
                   <p>&nbsp;</p>
               </div>
               <div class="col-md-4">
                   <img src="Images/download3.jpg"  width="220" height="200" />
                   <p>&nbsp;</p>
               </div>
               <div class="col-md-4">
                   <img src="Images/download4.jpg"  width="220" height="200" />
                   <p>&nbsp;</p>
               </div>
           </div>
       </div>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <p>
                           <b>Designed to help Provincial Liaisons, Regional Coordinators, Centre Managers, ECD Teachers and Parents keep up to date in an ECDC</b>
                        </p>
                        <div>
                            <br /><br />
                         <asp:Button ID="Sign" runat="server" CssClass="btn btn-outline-primary btn-lg" Text="Sign Up" OnClick="Sign_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Log" runat="server" CssClass="btn btn-outline-primary btn-lg" Text="Log In" OnClick="Log_Click"></asp:Button>
                         
                        </div>
                        <br /><br />
                        <p><b> Users</b></p>
                    </center>
                </div>
            </div>
            </div>
        <br /><br /><br />
            
    </section>
</asp:Content>
