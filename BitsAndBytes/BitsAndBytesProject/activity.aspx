<%@ Page Title="Activities" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="activity.aspx.cs" Inherits="SignUp.activity" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-body">
                        <div class="row" style="background-color: #A4DDED" >
                            <div class="col">
                                <center>
                                    <img src="Images/Screenshot%20(24).png" />
                                </center>
                            </div>
                        </div>
                        <div class="row"  style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                <h2>Add Activity</h2>
                                    </center>
                                
                            </div>
                        </div>
                        <div style="margin-left:50px">

                            <div id="sent" runat="server" class="alert alert-success" role="alert">
                            Great! Your Activity has been Uploaded
                            </div>
                            <br />
                            <asp:Label ID="Label2" cssClass="form-label" runat="server" Text="Search Class Name:"></asp:Label>
                            <div class="input-group mb-3">
                            <asp:DropDownList ID="dropclassName" CssClass="form-select" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetClassNameByCentreID" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="centreID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="Button4_Click"></asp:Button>
                                </div>
                            <br />
                            <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Class Number"></asp:Label>
                            <asp:TextBox ID="classID" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" cssClass="form-label" runat="server" Text="Enter Topic"></asp:Label>
                            <asp:TextBox ID="txtTpoc" CssClass="form-control" runat="server" Rows="2" ></asp:TextBox><br />
                            <div>
                                <center>
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-danger" Text="Back to Dashboard" OnClick="Button1_Click" ></asp:Button>&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-success btn-lg" Text="Add Activity" OnClick="Button2_Click" ></asp:Button>
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
                                   <img src="Images/Screenshot%20(43).png" />
                                </center>
                            </div>
                        </div>
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col"  >
                                <center>
                                <h2>Recent Activities</h2>
                                    </center>
                                
                            </div>
                        </div>
                        <div >
                            <center>
                                

                                <div id="alertNot" runat="server" class="alert alert-info" role="alert">
                                 You haven't added any activities
                                </div>

                                <asp:GridView ID="Gridactive1" CssClass="table align-middle" runat="server"></asp:GridView>
                            <br /><br />
                                 <asp:Button ID="Button3" runat="server" CssClass="btn btn-primary btn-lg" Text="Refresh" OnClick="Button3_Click"></asp:Button>


                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
