<%@ Page Title="" Language="C#" MasterPageFile="~/CenterManager/managerMaster.Master" AutoEventWireup="true" CodeBehind="frmActivities.aspx.cs" Inherits="BitsAndBytesProject.CenterManager.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="dist/mc-calendar.min.css" rel="stylesheet" />
    <script src="dist/mc-calendar.min.js"></script>
    <script src="dist/index.js"></script>
    <link href="dist/style.css" rel="stylesheet" />
    <style>
        .centerDrop {
            margin-left: 110px !important;
        }
    </style>
    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Schedule Activities</h4>
                <br />
                <div class="txtBorder">
                    <div class="displayline ">
                        <label for="drpStatus">Select Date:</label>
                    </div>
                    <div class="displayline updateButton">
                        <label for="drpStatus">Select Activity:</label>
                    </div>
                    <div class="displayline updateButton">
                        <label for="drpStatus">Select Center:</label>
                    </div>
                </div>
                <div class="txtBorder">
                    <div class="displayline">
                        <asp:TextBox ID="txtActivityDate" type="date" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
                    </div>
                    <div class="displayline">
                        <asp:DropDownList ID="drpActivity" runat="server" CssClass="form-control updateButton" Width="200px">
                        </asp:DropDownList>
                    </div>
                    <div class="displayline">
                        <asp:DropDownList ID="drpCenter" runat="server" CssClass="form-control centerDrop" Width="200px">
                        </asp:DropDownList>
                    </div>
                </div>
                <br />
                <div class="displayline">
                    <asp:Button ID="btnInsertActivity" OnClick="btnInsertActivity_Click" runat="server" CssClass="btn btn-primary mr-2" Text="Schedule Activity" />
                </div>
                <br />
                <asp:Table CssClass="table table-striped" ID="tblActivities" runat="server">
                    <asp:TableHeaderRow>
                        <asp:TableHeaderCell>Center Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                        <asp:TableHeaderCell>Activity Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <asp:Label runat="server" Visible="false" ID="lblError" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
