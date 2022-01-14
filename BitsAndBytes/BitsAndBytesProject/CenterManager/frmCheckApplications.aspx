<%@ Page Title="" Language="C#" MasterPageFile="~/CenterManager/managerMaster.Master" AutoEventWireup="true" CodeBehind="frmCheckApplications.aspx.cs" Inherits="BitsAndBytesProject.CenterManager.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <style>
        .GreyRow {
            background-color: lightsteelblue;
            color: black;
        }
         .space{
            margin-right: 15px;
        }
        th {
            margin: 20px;
            padding: 20px;
        }

            th span {
                padding-right: 80px;
            }

        td {
            color: black;
            padding: 20px;
            margin: 20px;
        }

        .GreyRow td {
            color: black;
            padding: 20px;
            margin: 20px;
        }

        td:first-child {
            color: black;
        }

        table {
            padding: 0;
            margin: 0;
        }
    </style>

    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Process Applications</h4>
                <br />
                <div class="displayline">
                    <label for="drpStatus">Select Status</label>

                </div>
                <div class="displayline">
                    <asp:DropDownList ID="drpStatus" runat="server" AutoPostBack="true" OnSelectedIndexChanged="drpStatus_SelectedIndexChanged" CssClass="form-control" Width="200px">
                        <asp:ListItem>Approved</asp:ListItem>
                        <asp:ListItem>Pending</asp:ListItem>
                        <asp:ListItem>Rejected</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <br />
                <asp:Table CssClass="table table-striped" ID="tblActionApplication" runat="server">
                      <asp:TableHeaderRow>
                        <asp:TableHeaderCell >Parent Name</asp:TableHeaderCell>
                        <asp:TableHeaderCell >Application No</asp:TableHeaderCell>
                        <asp:TableHeaderCell >Application Date</asp:TableHeaderCell>
                        <asp:TableHeaderCell >Application Status</asp:TableHeaderCell>
                        <asp:TableHeaderCell ></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                    <asp:Label runat="server" Visible="false" ID="lblError" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
