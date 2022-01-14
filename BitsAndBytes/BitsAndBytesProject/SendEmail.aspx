 <%@ Page Title="Announcememts" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="SignUp.SendEmail" %>
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
                                    <img src="Images/Screenshot%20(54).png" />
                                </center>
                            </div>
                        </div>
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                <h2>Enter your announcement here</h2>
                                    </center>
                                <hr />
                            </div>
                        </div>
                        <div style="margin-left:50px">

                            <div id="sent" runat="server" class="alert alert-success" role="alert">
                            Great! Your Announcement has been sent.
                            </div>
                            <br />
                            <asp:Label ID="Label2" cssClass="form-label" runat="server" Text="Address to:"></asp:Label>
                            <asp:DropDownList ID="dropUser" CssClass="form-select" runat="server" >
                                <asp:ListItem Selected="True">Choose here</asp:ListItem>
                                <asp:ListItem>Centre Manager</asp:ListItem>
                                <asp:ListItem>Parents</asp:ListItem>
                                <asp:ListItem>Teachers</asp:ListItem>
                                
                            </asp:DropDownList><br />

                            <asp:Label ID="Label3" cssClass="form-label" runat="server" Text="Enter Message"></asp:Label>
                            <asp:TextBox ID="txtMess" CssClass="form-control" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox><br />
                            
                            <div>
                                <asp:TextBox ID="teacherID" runat="server" ReadOnly="True"></asp:TextBox>
                                <asp:TextBox ID="txtEmail" runat="server" ReadOnly="True"></asp:TextBox>
                                <center>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-danger btn-lg" Text="Back" OnClick="Button1_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success btn-lg" Text="Send" OnClick="Button2_Click"></asp:Button>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <div class="col-md-6">
                 <div class="card">
                    <div class="card-body">
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                   <img src="Images/Screenshot%20(57).png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col" style="background-color: #A4DDED">
                                <center>
                                <h2>Announcement History</h2>
                                    </center>
                                <hr />
                            </div>
                        </div>
                        <div >
                            <center>
                                <div class="input-group mb-3">
                                    <asp:DropDownList ID="DropSubject" CssClass="form-select" runat="server">
                                        <asp:ListItem>All</asp:ListItem>
                                        <asp:ListItem>Managers</asp:ListItem>
                                        <asp:ListItem>Parents</asp:ListItem>
                                        <asp:ListItem>Teachers</asp:ListItem>
                                        <asp:ListItem>Coordinators</asp:ListItem>
                                        <asp:ListItem>Liaison</asp:ListItem>
                                    </asp:DropDownList>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="btnSearch_Click"></asp:Button>
                                </div>

                                <div id="alertNot" runat="server" class="alert alert-info" role="alert">
                                 We haven't recieved anything yet.
                                </div>

                                <asp:GridView ID="Gridmess1" CssClass="table align-middle" runat="server"></asp:GridView>
                            <br /><br />
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary btn-lg" Text="Refresh"></asp:Button>


                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </asp:Content>
