<%@ Page Title="Add a new class" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="SignUp.AddClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
    <div class="row">
    <div class="col-md-6">
      <div class="card">
          <div class="card-body">
              <div class="row">
                  <div class="col" style="background-color: #A4DDED" >
                      <center>
                      <img src="Images/Screenshot%20(15).png" style="margin-left: 50px;" />
                    <h2>Register a new Class</h2>
                      
                          </center>
                   </div>
              </div>
          </div>
       
        <div style="margin-left: 30px;">
            <div>
                <div class="alert alert-success" id="alert1" runat="server" role="alert">
                                 <center>
                                 Great! Your class has been registered
                                 </center>
                             </div>
            </div>
            <br />
        <div class="col-md-4">
    <label for="inputState" class="form-label">Age Group</label>
   <asp:TextBox ID="ageGroup" runat="server" CssClass="form-control" />
  </div>
        <br />
        <div class="col-md-4">
    <label for="inputState" class="form-label">Class Name</label>
   <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
  </div>
        <br />
            <div class="col-md-4">
                <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Pre School Name"></asp:Label>
                <asp:DropDownList ID="selectCentre" cssClass="form-select" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetCentreName" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="Button1_Click"  ></asp:Button>
                                
            </div>
            <br />
        <div class="col-md-4">
    <label for="inputState" class="form-label">Centre Number</label>
   <asp:TextBox ID="txtCentreID" runat="server" CssClass="form-control" ReadOnly="True" />
  </div>
            <asp:Label ID="lblTeacherID" runat="server" ></asp:Label>
     
        <br /><br />
         <div class="col" style="margin-left:50px;">
                 
   <asp:Button ID="cancel" runat="server" CssClass="btn btn-danger btn-lg" Text="Cancel" OnClick="cancel_Click"   />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="regi" runat="server" CssClass="btn btn-primary btn-lg" Text="Submit" OnClick="regi_Click" />
             <br />
        <br />
              </div>        
        </div>
    </div>
        </div>
          
    <div class="col-md-6" >
         <div class="card">
                    <div class="card-body"  style="background-color: #A4DDED">
                        <div class="row">
                            <div class="col">
                                <center>
                                     <img src="Images/Screenshot%20(40).png" />
                                     <h2>Classes Registered</h2>
                                      
                                  </center>
                                </div>
                            </div>
                        </div>
             <div class="row">
                 <div class="col">
                     <center>
          <br />
                                    <div class="input-group mb-3">
                                    <asp:DropDownList ID="DropCentreName" CssClass="form-select" runat="server" DataSourceID="SqlDataSource2" DataTextField="name" DataValueField="name">
                                       
                                    </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetCentreName" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="btnSearch_Click" ></asp:Button>
                                </div>

                                <div id="alertNot" runat="server" class="alert alert-info" role="alert">
                                 We haven't recieved anything yet.
                                </div>
                   
        <asp:GridView ID="Grid1" runat="server" CssClass="table align-middle" CellPadding="4" >
        </asp:GridView>
                         <br />
                         <div>
                         <center>
                            <asp:Button ID="btnRef" runat="server" CssClass="btn btn-lg btn-primary" Text="Refresh" OnClick="btnRef_Click"></asp:Button>
                         </center>
                             </div>
                           </center>
                 </div>
             </div>
    </div>
        
        </div>
    </div>
        </div>
</asp:Content>
