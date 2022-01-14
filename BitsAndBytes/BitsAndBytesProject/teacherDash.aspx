<%@ Page Title="Welcome Teacher" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="teacherDash.aspx.cs" Inherits="SignUp.teacherDash" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <div class="row" style="background-color:#A4DDED;" >
                 
                    <h2>
                        <img src="Images/Screenshot%20(15).png" width="60" height="60" />
                        TEACHER DASHBOARD</h2>
                   <span class="navbar-text">
                    <p>You are logged in as: <asp:Label ID="lblTeacher" runat="server" ></asp:Label></p>
                       
                    </span>
                </div>
                <div class="row">
                    <div class="col-md-3" style="background-color:#A4DDED;">
                        <center>
                        <ul style="list-style-type: none;">
                            <br />
                            <li>
                                   
                               <span> <asp:LinkButton ID=linkProfile class="btn btn-outline-dark" runat="server" OnClick="linkProfile_Click">User Profile</asp:LinkButton></span>
                            </li>
                            <br />
                            <li>
                                
                                <asp:LinkButton ID="linkClass" class="btn btn-outline-dark" runat="server" OnClick="linkClass_Click">Add a new Class</asp:LinkButton>
                            </li>
                            <br />
                            <li>
                               
                               <asp:LinkButton ID="linkList" class="btn btn-outline-dark" runat="server" OnClick="linkList_Click">Pupil Medicals</asp:LinkButton></li>
                            <br />
                            <li>
                                
                               <asp:LinkButton ID="linkActivities" class="btn btn-outline-dark" runat="server" OnClick="linkActivities_Click">Class Activities</asp:LinkButton></li>
                            <br />
                            <li>
                                
                                <asp:LinkButton ID="linkAttendance" class="btn btn-outline-dark" runat="server" OnClick="linkAttendance_Click">Attendance Register</asp:LinkButton></li>
                            <br />
                            <li>
                                
                                <asp:LinkButton ID="linkMarks" class="btn btn-outline-dark" runat="server" OnClick="linkMarks_Click">Class Marks</asp:LinkButton></li>
                            <br />
                            <li>
                                
                                <asp:LinkButton ID="linkStat" class="btn btn-outline-dark" runat="server" OnClick="linkStat_Click">Stationery Request</asp:LinkButton></li>
                            <br />
                        </ul>
                            </center>
                    </div>
                    <div class="col-md-9">
                        <div class="row" >
                            <div class="col-md-4"  >
                                <center>
                               <br />
                                    <div style="background-color: #1ca9c9; width:200px; height:150px;">
                                        <br />
                                        <img src="Images/Screenshot%20(54).png" width="60" height="60" />
                                   <br /><br />
                                        <asp:LinkButton ID="LinkButton1" class="link-dark" runat="server" OnClick="LinkButton1_Click">Announcements</asp:LinkButton>
                                 <br /><br /><br />
                                        </div>
                                    </center>
                            </div>
                            <div class="col-md-4">
                                <center>
                                    <br />
                                    <div style="background-color:#1ca9c9; width:200px; height:150px;">
                                        <br />
                                        <img src="Images/Screenshot%20(40).png" width="60" height="60" />
                                    <br /><br />
                               <asp:LinkButton ID="LinkButton2" class="link-dark" runat="server" OnClick="LinkButton2_Click">Class List</asp:LinkButton>
                                    <br /><br /><br />
                                        </div>
                                </center>
                            </div>
                            <div class="col-md-4">
                                <center>
                                    <br />
                                    <div style="background-color:#1ca9c9; width:200px; height:150px;">
                                        <br />
                                        <img src="Images/Screenshot%20(41).png" width="60" height="60" />
                                    <br /><br />
                               <asp:LinkButton ID="Linkpupil" class="link-dark" runat="server" OnClick="Linkpupil_Click" >Waiting List</asp:LinkButton>
                                    <br /><br /><br />
                                        </div>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                
                              
                            </div>
                            <div class="col-md-6">
                                <br /><br />
                               
                               
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
