<%@ Page Title="" Language="C#" MasterPageFile="~/CenterManager/managerMaster.Master" AutoEventWireup="true" CodeBehind="frmViewReport.aspx.cs" Inherits="BitsAndBytesProject.CenterManager.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="content-wrapper" style="padding-bottom: 0 !important; margin-bottom: 0 !important;">
        <div class="col-12 grid-margin stretch-card" style="margin-bottom: 0;">
            <div class="card">
                <div class="card-body">
                    VIEW REPORTS
                </div>
            </div>
        </div>
    </div>
    <div class="d-inline-flex">
        <div class="content-wrapper" style="padding-top: 0 !important; margin-top: 0;">
            <div class="col-lg-11 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="mb-3">CARE ACTIVITY PARTICIPANTS</h4>
                        <canvas id="myChart" width="400" height="250"></canvas>
                        <asp:PlaceHolder ID="plcChart1" runat="server"></asp:PlaceHolder>
                    </div>
                </div>
            </div>
        </div>

        <div class="content-wrapper" style="padding-top: 0; margin-top: 0;">
            <div class="col-lg-11 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <h4 class="mb-3">CARE ACTIVITY PARTICIPANTS By Gender</h4>
                        <canvas id="barChart" width="400" height="250"></canvas>
                        <asp:PlaceHolder ID="plcChart2" runat="server"></asp:PlaceHolder>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
