<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorMaster.Master" AutoEventWireup="true" CodeBehind="frmReports.aspx.cs" Inherits="BitsAndBytesProject.WebForm8" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Content/Stellar-master/Stellar-master/vendors/chart.js/Chart.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-wrapper" style="padding-bottom: 0 !important; margin-bottom: 0 !important;">
        <div class="col-12 grid-margin stretch-card" style="margin-bottom: 0;">
            <div class="card">
                <div class="card-body">
                    REPORTS
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
                       <%-- <script>
                            var ctx = document.getElementById('myChart').getContext('2d');
                            var myChart = new Chart(ctx, {
                                type: 'pie',
                                data: {
                                    labels: ["Jumping", "Reading", "Puzzles", "Block Building", "Simple Counting"],
                                    datasets: [{
                                        data: [40, 10, 6, 25, 11],
                                        borderColor: [
                                            "#3cba9f",
                                            "#ffa500",
                                            "#c45850",
                                            "#b4f020",
                                            "#cj9850",
                                            "#bgy750",
                                        ],
                                        backgroundColor: [
                                            "rgb(60,186,159,0.1)",
                                            "rgb(255,165,0,0.1)",
                                            "rgb(196,88,80,0.1)",
                                            "rgb(96,58,60,0.1)",
                                            "rgb(106,98,10,0.1)",
                                            "rgb(200,74,50,0.1)",
                                        ],
                                        borderWidth: 2,
                                    }]
                                },
                                options: {
                                    scales: {
                                        xAxes: [{
                                            display: false,
                                        }],
                                        yAxes: [{
                                            display: false,
                                        }],
                                    }
                                },
                            });

                        </script>--%>
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
                        <%--<script>
                            var ctx = document.getElementById('barChart').getContext('2d');
                            var myChart = new Chart(ctx, {
                                type: 'bar',
                                data: {
                                    labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
                                    datasets: [{
                                        data: [86, 114, 106, 106, 107, 111, 133],
                                        label: "Total",
                                        borderColor: "rgb(62,149,205)",
                                        backgroundColor: "rgb(62,149,205,0.1)",
                                        borderWidth: 2
                                    }, {
                                        data: [10, 21, 60, 44, 17, 21, 17],
                                        label: "Boys",
                                        borderColor: "rgb(255,165,0)",
                                        backgroundColor: "rgb(255,165,0,0.1)",
                                        borderWidth: 2
                                    }, {
                                        data: [6, 3, 2, 2, 7, 0, 16],
                                        label: "Girls",
                                        borderColor: "rgb(196,88,80)",
                                        backgroundColor: "rgb(196,88,80,0.1)",
                                        borderWidth: 2
                                    }
                                    ]
                                },
                            });
                        </script>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
