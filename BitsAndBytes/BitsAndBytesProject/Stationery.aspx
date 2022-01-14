<%@ Page Title="Stationery" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="Stationery.aspx.cs" Inherits="SignUp.Stationery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container-fluid">
           
                <div class="card">
                    <div class="card-body">
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                                <center>
                                    <img src="Images/Screenshot%20(24).png" />
                                </center>
                                </div>
                            </div>
                        <div class="row" style="background-color: #A4DDED">
                            <div class="col">
                               
                                <center>
                                    <h2>Your Orders</h2>
                                    <hr />
                                </center>
                            </div>
                        </div>
                         <div style="margin-left:50px">
                             <div class="alert alert-primary" id="nothingAlert" runat="server" role="alert">
                                 <center>
                                 You have not made any orders yet
                                </center>
                               </div>
                             <br />
                             <asp:GridView ID="GridView1" cssClass="table align-middle" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                 <Columns>
                                     <asp:BoundField DataField="Order No" HeaderText="Order No" InsertVisible="False" ReadOnly="True" SortExpression="Order No" />
                                     <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                     <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                     <asp:BoundField DataField="Order Status" HeaderText="Order Status" SortExpression="Order Status" />
                                     <asp:BoundField DataField="Delivery Status" HeaderText="Delivery Status" SortExpression="Delivery Status" />
                                     <asp:BoundField DataField="Sent By" HeaderText="Sent By" SortExpression="Sent By" />
                                 </Columns>
                             </asp:GridView>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetAllOrders" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                             <br />
                             <br />
                             <center>
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-lg btn-primary" Text="Refresh" OnClick="Button1_Click"></asp:Button>
                             </center>
                             </div>
                        <div>
                            <br />
                            <center>
                                <h3>Update your Order</h3>
                                <br /><hr />
                            </center>
                            <div class="input-group mb-3">
                                <asp:Label ID="Label1" CssClass="input-group-text" runat="server" Text="Select Order No"></asp:Label>
                                <asp:DropDownList ID="DropOrderID" CssClass="form-select" runat="server" DataSourceID="SqlDataSource1" DataTextField="stationeryID" DataValueField="stationeryID" ></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetStationeryIDByTeacherID" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="4" Name="teacherID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </div><br />
                            <div class="input-group mb-3">
                                <asp:Label ID="Label2" CssClass="input-group-text" runat="server" Text="Select Order Status"></asp:Label>
                                <asp:DropDownList ID="DropStatus" CssClass="form-select" runat="server">
                                    <asp:ListItem>Choose here</asp:ListItem>
                                    <asp:ListItem>Cancel Order</asp:ListItem>
                                    <asp:ListItem>Wrong Order</asp:ListItem>
                                </asp:DropDownList>
                            </div><br />
                            <center>
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-lg btn-primary" Text="Update" OnClick="Button2_Click"></asp:Button>
                             </center>

                        </div>
                        <div>
                             <asp:LinkButton ID="LinkDash1" runat="server" OnClick="LinkDash1_Click">--Back to Dashboard</asp:LinkButton>
                             </div>
                        </div>
                    </div>
                </div>
</asp:Content>
