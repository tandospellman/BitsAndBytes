<%@ Page Title="Teacher Vacancies" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="vacancies.aspx.cs" Inherits="SignUp.vacancies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container"  style="background-color: #A4DDED" >
        <div class="card">
            <div class="card-body">
                <center>
                    <br />
                    <img src="Images/Screenshot%20(100).png" />
                    <br />
                    <h2>Vacancies</h2>
                    <p>Here is a list of centres available for teachers</p>
                    <br />
                </center>
            </div>
            <div>
                <br />
                 <div id="showList" runat="server" class="alert alert-dark" role="alert">
                                    <center>
                                    Nothing to show
                                        </center>
                </div>
                <br />
                <center>
                    <asp:GridView ID="gridCentres" CssClass="table table-light table-hover" runat="server"></asp:GridView>
                </center>
                
            </div>
            <div class="row">
                <br /><br />
                
                <h4>Number of Classes per Centre</h4>
                <center>
                    <br />
                    <asp:GridView ID="GridNumber" CssClass="table table-light table-hover" runat="server"></asp:GridView>
                </center><br />


            </div>
            <div class="row">
                <center>
                    <asp:Button ID="Button1" CssClass="btn btn-secondary btn-lg" runat="server" Text="Back to Home " OnClick="Button1_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                     <asp:Button ID="Button2" CssClass="btn btn-primary btn-lg" runat="server" Text="Sign Up as a Teacher" OnClick="Button2_Click"></asp:Button>
                </center>
                <br /><br /><br />
            </div>

        </div>
    </div>
   
</asp:Content>
