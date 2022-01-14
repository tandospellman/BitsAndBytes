<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorMaster.Master" AutoEventWireup="true" CodeBehind="frmProgrammes.aspx.cs" Inherits="BitsAndBytesProject.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .space{
            margin-right: 15px;
        }
        .GreyRow {
            background-color: lightsteelblue;
            color: black;
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
                <h4 class="card-title">Programmes</h4>
                

                <asp:Table ID="tblProgrammes" CssClass="table table-striped" runat="server">
                    <asp:TableHeaderRow>
                       <asp:TableHeaderCell>Name</asp:TableHeaderCell>
                       <asp:TableHeaderCell>Duration</asp:TableHeaderCell>
                       <asp:TableHeaderCell>Status</asp:TableHeaderCell>
                       <asp:TableHeaderCell></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                </asp:Table>
                <asp:Label ID="lblError" Visible="false" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>








</asp:Content>
