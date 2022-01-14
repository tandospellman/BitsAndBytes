<%@ Page Title="" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="SignUp.Classes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="card">
            <div class="card-body" style="background-color: #A4DDED">
                <center>
                    <img src="Images/Screenshot%20(40).png" /><br />
                    <h3>Class List</h3>
                    <br /><hr />
                </center>
            </div>
            <div style="margin-left:100px; margin-right:100px">
                <br />
                <div id="showList" runat="server" class="alert alert-dark" role="alert">
                                    <center>
                                    Nothing to show
                                        </center>
            </div>
                <asp:GridView id="gridClassList" class="table table-secondary align-middle" runat="server"></asp:GridView>
        </div>
            <br />
            <center>
                <asp:Button ID="Button3" CssClass="btn btn-lg btn-outline-primary" runat="server" Text="Refresh" OnClick="Button3_Click" ></asp:Button>
                <br /><br />
                <asp:Button ID="Button1" CssClass="btn btn-lg btn-primary" runat="server" Text="Update Class List" OnClick="Button1_Click"></asp:Button>
            </center>
            <br />
            <div id="update" runat="server">

                <center>
                    <h3>Remove Pupil From Class List</h3>
                    <hr />
                </center>
                <br />
                <div id="danger" runat="server" class="alert alert-warning" role="alert">
                     Are you sure? This pupil will be removed from your class. 
                    <asp:Button ID="btnCan" CssClass="btn btn-outline-danger" runat="server" Text="Cancel" OnClick="btnCan_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnRemove" CssClass="btn btn-outline-primary" runat="server" Text="Confirm" OnClick="btnRemove_Click" />

                </div>
                <br />
                 <div class="input-group mb-3">
                        <asp:Label ID="Label2" CssClass="input-group-text" runat="server" Text="Select Pupil No"></asp:Label>
                        <asp:DropDownList CssClass="form-select" ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="pupilID" DataValueField="pupilID"></asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDByClassID" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="classID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div> &nbsp;
                <center>
                <asp:Button ID="Button2" CssClass="btn btn-lg btn-warning" runat="server" Text="Remove" OnClick="Button2_Click" />
                </center>
            </div>
            <asp:LinkButton id="linkBack" runat="server" OnClick="linkBack_Click">--Back to Dashboard</asp:LinkButton>
    </div>
</asp:Content>
