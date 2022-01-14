<%@ Page Title="" Language="C#" MasterPageFile="~/CenterManager/managerMaster.Master" AutoEventWireup="true" CodeBehind="frmEmail.aspx.cs" Inherits="BitsAndBytesProject.CenterManager.WebForm7" %>
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
                <h4 class="card-title">Email Teachers</h4>
                <br />
                <div class="txtBorder">
                    <div class="displayline ">
                        <label for="drpStatus">To:</label>
                    </div>
                </div>
                <div class="txtBorder">
                    <div class="displayline">
                        <asp:TextBox ID="txtToEmail" type="text" runat="server" CssClass="form-control" Width="800px"></asp:TextBox>
                    </div>
                </div>
                <div class="txtBorder">
                    <div class="displayline ">
                        <label for="drpStatus">Subject:</label>
                    </div>
                </div>
                <div class="txtBorder">
                    <div class="displayline">
                        <asp:TextBox ID="txtSubject" type="text" runat="server" CssClass="form-control" Width="800px"></asp:TextBox>
                    </div>
                </div>
                <div class="txtBorder">
                    <div class="displayline ">
                        <label for="drpStatus">Attachments:</label>
                    </div>
                </div>
                 <div class="txtBorder">
                    <div class="displayline ">
                        <asp:FileUpload runat="server" ID="flAttachments" CssClass="form-control"/>
                    </div>
                </div>
                <div class="txtBorder">
                    <div class="displayline ">
                        <label for="drpStatus">Message:</label>
                    </div>
                </div>
                 <div class="txtBorder">
                    <div class="displayline ">
                        <asp:TextBox TextMode="MultiLine" type="text" width="800px" height="100px" runat="server" id="txtMessage"></asp:TextBox>
                    </div>
                </div>
                <br />
                <div class="displayline">
                 <asp:Button id="btnSendEmail" OnClick="btnSendEmail_Click" runat="server" CssClass="btn btn-linkedin" Width="200" Text="Send Email"/>
                </div>
                <asp:Label runat="server" Visible="false" ID="lblError" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
