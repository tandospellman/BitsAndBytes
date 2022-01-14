<%@ Page Title="Request for Stationery" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="SignUp.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
                <div class="card">
                    <div class="card-body">
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                    <img src="Images/Screenshot%20(39).png" />
                                </center>
                            </div>
                        </div>
                        <div class="row"style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                    <h2>Request for stationery</h2>
                                    <hr />
                                </center>
                            </div>
                        </div>
                         <div style="margin-left:50px">
                             <div class="alert alert-success" id="alert1" runat="server" role="alert">
                                 <center>
                                 Great! Your order will be attended to shortly.
                                 </center>
                             </div>
                             <asp:TextBox ID="txtEmail" runat="server" ReadOnly="True"></asp:TextBox>
                             <br />
                             <asp:Label ID="Label2" CssClass="form-label" runat="server" Text="Category"></asp:Label>
                             <asp:DropDownList ID="DropDownList1" CssClass="form-select" runat="server">
                                 <asp:ListItem>Choose Here</asp:ListItem>
                                 <asp:ListItem>Stationery</asp:ListItem>
                                 <asp:ListItem>Toys</asp:ListItem>
                             </asp:DropDownList>
                             <br />
                             <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Give a description of what you need."></asp:Label>
                             <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Rows="4" TextMode="MultiLine"></asp:TextBox>
                             <br />
                             <asp:TextBox ID="txtTeacherID" CssClass="form-control" runat="server"></asp:TextBox>
                             <br />
                             <center>
                                <asp:Button ID="Insert" runat="server" CssClass="btn btn-lg btn-success" Text="Submit" OnClick="Insert_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="btnSee" runat="server" CssClass="btn btn-lg btn-info" Text="See Orders" OnClick="btnSee_Click"></asp:Button>
                             </center>

                             <br />
                             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">--Back to Dashboard</asp:LinkButton>
                         </div>
                    </div>
                </div>
            </div>
</asp:Content>
