<%@ Page Title="Medical History" Language="C#" MasterPageFile="~/my1.Master" AutoEventWireup="true" CodeBehind="medHistory.aspx.cs" Inherits="SignUp.medHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
        <div class="card">
            <div class="card-body" style="background-color: #A4DDED">
                <br />
                <center>
                    <img src="Images/Screenshot%20(99).png" /><br />
                    <h3>Pupil Medicals and Treatment</h3>
                    <br />
                </center>
            </div>
            <div style="margin-left:100px; margin-right:100px">
                <br />
                <div id="alertList" runat="server" class="alert alert-dark" role="alert">
                                    <center>
                                    Nothing to show
                                        </center>
            </div>
                <br />
                <div class="input-group mb-3">
                                 <asp:Label ID="Label6" CssClass=" form-label" runat="server" Text="Show by Pupil"></asp:Label>
                                    <asp:DropDownList ID="SelectPupilID" CssClass="form-select" runat="server" DataSourceID="SqlDataSource2" DataTextField="pupilID" DataValueField="pupilID">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BBConS %>" SelectCommand="GetPupilIDinMedicals" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <asp:Button ID="btnSearch" runat="server" CssClass="btn btn-outline-secondary" Text="Search" OnClick="btnSearch_Click"  ></asp:Button>
                                </div>
                <br />
                <asp:GridView id="gridMed" class="table table-secondary align-middle" runat="server" >
                </asp:GridView>
        </div>
            <br />
            <br />
           
            </div>
            <asp:LinkButton id="linkBackTo" runat="server" OnClick="linkBackTo_Click" >--Back to Dashboard</asp:LinkButton>
    </div>
</asp:Content>
