<%@ Page Title="Registered Pupils" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="pupils.aspx.cs" Inherits="SignUp.pupils" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="card">
            <div class=" card-body">
                 <div class="row">
                            <div class="col">
                                <center>
                                    <img src="Images/Screenshot%20(39).png" />
                                </center>
                                </div>
                            </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h2>Registered Pupils</h2>
                                    <hr />
                                </center>
                            </div>
                      </div>
                 <div style="margin-left:50px">


                             <div class="alert alert-primary" id="notAlert" runat="server" role="alert">
                                 <center>
                                 Nothing to show
                                </center>
                               </div>
                             <br />
                             <asp:GridView ID="Gridpupils1" cssClass="table align-middle" runat="server"></asp:GridView>
                             <br />
                             <br />
                             <center>
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-primary" Text="Refresh" OnClick="Button1_Click"></asp:Button>
                             </center>
                     <br /><br />
                  </div>

                <div>
                    <center>
                        <h3>Add Pupil to a Class</h3>
                    </center>
                    <hr /><br />
                    <br />
                    <div id="alrtSuc" runat="server" class="alert alert-success" role="alert">
                      <center> Great. Pupil has been added to class.</center>
                        
                    </div><br />
                    <div class="input-group mb-3">
                        <asp:Label ID="Label1" CssClass="input-group-text" runat="server" Text="Select Pupil No"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="pupilID" DataValueField="pupilID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDOut" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div><br />
                    <div class="input-group mb-3">
                        <asp:Label ID="Label2" CssClass="input-group-text" runat="server" Text="Select Class Name"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetClassName" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                       <asp:Button ID="btnSearchID" runat="server" CssClass="btn btn-outline-secondary" Text="Search for ID" OnClick="btnSearchID_Click"></asp:Button>

                    </div><br />
                    <div class="input-group mb-3">
                        <asp:Label ID="Label3" CssClass="input-group-text" runat="server" Text="Class No"></asp:Label>
                        <asp:TextBox ID="txtClassID" CssClass="form-control" runat="server" ReadOnly="True"></asp:TextBox>
                    </div>
                    <div>
                        <center>
                            <asp:Button runat="server" cssClass="btn btn-lg btn-danger" Text="Back"></asp:Button>&nbsp;&nbsp;&nbsp;
                            <asp:Button runat="server" cssClass="btn btn-lg btn-primary" Text="Add to Class" OnClick="Unnamed2_Click"></asp:Button>
                        </center>
                    </div>
                </div>

                            <div>
                             <asp:LinkButton ID="LinkBackDash1" runat="server" OnClick="LinkBackDash1_Click" >--Back to Dashboard</asp:LinkButton>
                             </div>
          
        </div>
    </div>
</asp:Content>
