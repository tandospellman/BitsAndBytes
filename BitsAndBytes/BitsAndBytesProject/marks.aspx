<%@ Page Title="Marks Page" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="marks.aspx.cs" Inherits="SignUp.marks" %>
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
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                    <h2>Class Results</h2>
                                    <hr />
                                </center>
                            </div>
                        </div>
                         <div style="margin-left:50px">
                             <div class="alert alert-primary" id="zeroAlert" runat="server" role="alert">
                                 <center>
                                 You have not inserted any data.
                                </center>
                               </div>
                             <div class="input-group mb-3">
                                 <asp:Label ID="Label6" CssClass=" form-label" runat="server" Text="Show by Pupil"></asp:Label>
                                    <asp:DropDownList ID="SelectPupil" CssClass="form-select" runat="server" DataSourceID="SqlDataSource3" DataTextField="pupilID" DataValueField="pupilID">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDByClassID" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="1" Name="classID" Type="Int32" />
                                        </SelectParameters>
                                 </asp:SqlDataSource>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="btnSearch_Click" ></asp:Button>
                                </div>
                             <br />
                             <asp:GridView ID="GridMarks" cssClass="table align-middle" runat="server"></asp:GridView>
                             <br />
                             <asp:GridView ID="GridView1" runat="server"></asp:GridView>
                             <br />
                             <center>
                                <asp:Button ID="load1" runat="server" CssClass="btn btn-lg btn-primary" Text="Refresh" OnClick="load1_Click" Width="65px"></asp:Button>
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-lg btn-primary" Text="Save as PDF" OnClick="Button3_Click"></asp:Button>

                             </center>
                             <asp:LinkButton ID="LinkDash1" runat="server" OnClick="LinkDash1_Click" >--Back to Dashboard</asp:LinkButton>
                             </div>
                        <div id="addmarks" style="margin-left:50px">
                            <br />
                            <center>
                            <h3>Add Results</h3>
                                </center>
                            <br /><hr />
                            <div id="mark" runat="server" class="alert alert-secondary" role="alert">
                                <center>
                                Great! Result has been added.
                                </center>
                            </div>
                            <br />
                         <div class="input-group mb-3">
                        <asp:Label ID="Label2" CssClass="input-group-text" runat="server" Text="Select Pupil No"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="dropPupilID" runat="server" DataSourceID="SqlDataSource1" DataTextField="pupilID" DataValueField="pupilID" ></asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDByClassID" SelectCommandType="StoredProcedure">
                                 <SelectParameters>
                                     <asp:Parameter DefaultValue="1" Name="classID" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                        </div><br />
                        <div class="input-group mb-3">
                        <asp:Label ID="Label1" CssClass="input-group-text" runat="server" Text="Select Activity No"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="activityID" DataValueField="activityID" ></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetActivityIDByClassID" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="classID" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div><br />
                        <div class="input-group mb-3">
                        <asp:Label ID="Label3" CssClass="input-group-text" runat="server" Text="Comment"></asp:Label>
                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                        </div><br />
                        <div class="input-group mb-3">
                        <asp:Label ID="Label4" CssClass="input-group-text" runat="server" Text="Percentage"></asp:Label>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div><br />
                        <div class="input-group mb-3">
                        <asp:Label ID="Label5" CssClass="input-group-text" runat="server" Text="Select Result"></asp:Label>
                          <asp:DropDownList CssClass="form-select" ID="DropDownList2" runat="server">
                              <asp:ListItem>Choose Here</asp:ListItem>
                              <asp:ListItem>Failed</asp:ListItem>
                              <asp:ListItem>Passed</asp:ListItem>
                            </asp:DropDownList>
                        </div><br /><br />
                            <center>
                            <asp:Button ID="Button1" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" OnClick="Button1_Click"></asp:Button>&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button2" CssClass="btn btn-outline-success" runat="server" Text="Add Mark" OnClick="Button2_Click"></asp:Button>
                            </center>
                            <br /><br />

                        </div>
                    </div>
                </div>
</asp:Content>
