<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorMaster.Master" AutoEventWireup="true" CodeBehind="frmViewApplication.aspx.cs" Inherits="BitsAndBytesProject.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">View Applications</h4>
                <br />
                <div class="displayline">
                    <label for="drpStatus">Select Status</label>

                </div>
                <div class="displayline">
                    <asp:DropDownList ID="drpStatus" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpStatus_SelectedIndexChanged" CssClass="form-control" Width="200px">
                        <asp:ListItem Selected="True">Approved</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Rejected</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <br />
                <asp:Table ID="tblViewApplications" runat="server" CssClass="table">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell CssClass="font-weight-bold">Parent Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="font-weight-bold">Application No</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="font-weight-bold">Application Date</asp:TableHeaderCell>
                        <asp:TableHeaderCell CssClass="font-weight-bold">Application Status</asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
            </div>
        </div>
    </div>
</asp:Content>
