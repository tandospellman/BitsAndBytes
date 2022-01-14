<%@ Page Title="Attendance Report" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="SignUp.attendance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
           
                <div class="card">
                    <div class="card-body">
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                    <img src="Images/Screenshot%20(40).png" />
                                </center>
                                </div>
                            </div>
                        <div class="row" style="background-color: #A4DDED" >
                            <div class="col">
                                <center>
                                    <h2>Attendance Report</h2>
                                    <hr />
                                </center>
                            </div>
                        </div>
                         <div style="margin-left:50px">
                             <div>
                                 <br />
                                 <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Search by Pupil"></asp:Label>
                                 <div class="input-group mb-3">
                                    <asp:DropDownList ID="DropSubject" CssClass="form-select" runat="server" DataSourceID="SqlDataSource3" DataTextField="pupilID" DataValueField="pupilID">
                                    </asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDByClassID" SelectCommandType="StoredProcedure">
                                         <SelectParameters>
                                             <asp:Parameter DefaultValue="1" Name="classID" Type="Int32" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="btnSearch_Click"></asp:Button>
                                </div>
                             </div>
                             <br />
                             <div class="alert alert-primary" id="notAlert" runat="server" role="alert">
                                 <center>
                                Opps. Looks like no one was present
                                </center>
                               </div>
                             <br />
                             <asp:GridView ID="GridAtt" cssClass="table align-middle" runat="server"></asp:GridView>
                             <br />
                             <center>
                             <asp:Button ID="Button1" CssClass="btn btn-outline-primary" runat="server" Text="Refresh" OnClick="Button1_Click" />
                             <br /><br />
                             
                                <asp:Button ID="add2" runat="server" CssClass="btn btn-lg btn-primary" Text="Create Report" OnClick="add2_Click"></asp:Button>
                                 <br /><br />
                             </center>

                             <div id="report" runat="server">
                                 <b /><center><h3>Add Comment to a Pupil</h3></center>
                                 <hr />
                                 <br />
                                 <div class="alert alert-primary" id="Div1" runat="server" role="alert">
                                 <center>
                                Great. Your comment has been added
                                </center>
                               </div>
                                 <div class="input-group mb-3">
                        <asp:Label ID="Label2" CssClass="input-group-text" runat="server" Text="Select Pupil No"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="pupilID" DataValueField="pupilID" ></asp:DropDownList>
                                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDByClassID" SelectCommandType="StoredProcedure">
                                         <SelectParameters>
                                             <asp:Parameter DefaultValue="1" Name="classID" Type="Int32" />
                                         </SelectParameters>
                                     </asp:SqlDataSource>
                    </div><br />
                                 <div class="input-group mb-3">
                                 <asp:Label ID="Label3" CssClass="input-group-text" runat="server" Text="Select Comment"></asp:Label>
                                 <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server">
                                     <asp:ListItem>Choose here</asp:ListItem>
                                     <asp:ListItem>Absent</asp:ListItem>
                                     <asp:ListItem>Present</asp:ListItem>
                                     </asp:DropDownList>
                                     </div>
                                     <br />
                                     <br />
                                     <center>
                                          <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-danger" Text="Cancel" OnClick="Button3_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                          <asp:Button ID="Button2" runat="server" CssClass="btn btn-lg btn-success" Text="Submit" OnClick="Button2_Click"></asp:Button>
                                     </center>

                              </div>
                             <asp:LinkButton ID="Linkback1" runat="server" OnClick="Linkback1_Click"  >--Back to Dashboard</asp:LinkButton>
                            
                        </div>
                    </div>
                </div>
               
                </b>
               
</asp:Content>
