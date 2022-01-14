<%@ Page Language="C#" MasterPageFile="~/liason.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="BitsandBytesProject.Reports" %>

<!DOCTYPE html>








<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <script>
            $(document).ready(function () {
                $.ajax({
                    url: 'ReportService.asmx/GetParticipation,
                 method: 'post',
                    crossDomain: true,
                    contentType: 'application/json charset=utf-8',
                    dataType: 'json',
                    success: function (data) {
                        $('#datatable').dataTable({
                            dom: 'Bfrtip',
                            buttons: [
                                'copy', 'excel', 'csv', 'pdf', 'print'
                            ],
                            data: data,
                            columns: [
                                { 'data': 'participationID' },
                                { 'data': 'activityID' },
                                { 'data': 'languageID' },
                                { 'data': 'date' },
                                { 'data': 'studentID' },

                            ]
                        });
                        $(document).ready(function () {
                            $.ajax({
                                url: 'ReportService.asmx/GetComplaint,
                 method: 'post',
                                crossDomain: true,
                                contentType: 'application/json charset=utf-8',
                                dataType: 'json',
                                success: function (data) {
                                    $('#datatable').dataTable({
                                        dom: 'Bfrtip',
                                        buttons: [
                                            'copy', 'excel', 'csv', 'pdf', 'print'
                                        ],
                                        data: data,
                                        columns: [
                                            { 'data': 'programID' },
                                            { 'data': 'name' },
                                            { 'data': 'status' },
                                            { 'data': 'duration' },
                                            { 'data': 'coordinator' },

                                        ]
                                    });
                                    $(document).ready(function () {
                                        $.ajax({
                                            url: 'ReportService.asmx/GetComplaint,
                 method: 'post',
                                            crossDomain: true,
                                            contentType: 'application/json charset=utf-8',
                                            dataType: 'json',
                                            success: function (data) {
                                                $('#datatable').dataTable({
                                                    dom: 'Bfrtip',
                                                    buttons: [
                                                        'copy', 'excel', 'csv', 'pdf', 'print'
                                                    ],
                                                    data: data,
                                                    columns: [
                                                        { 'data': 'complaintID' },
                                                        { 'data': 'studentID' },
                                                        { 'data': 'date' },
                                                        { 'data': 'complainttype' },
                                                        { 'data': 'message' },

                                                    ]
                                                });

                                            }
                                        }
            });

                                });

        </script>
        <div>
            <div class="container">
                <div class="row">



                    <div class="col-md-7 col-md-offset-2">

                        <div class="panel panel-default">

                            <div class="panel panel-primary">


                                <div class="text-center">
                                    <h3 style="color: #2C3E50">View Report</h3>
                                    <h4>
                                        <label for="Choose Report" style="color: #E74C3C">Choose Report</label></h4>
                                    <div class="input-group">
                                        <span class="input-group-addon"><span class="glyphicon glyphicon-tasks"></span></span>
                                        <<asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Participation</asp:ListItem>
                                            <asp:ListItem>Programmes</asp:ListItem>
                                            <asp:ListItem>Complaint</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                    <h5>
                                        <label for="Choose Report" style="color: #E74C3C">Time :</label>
                                        <input>id="a" type="radio" name="type" value="Daily">Daily
                             <input id="b" type="radio" name="type" value="Weekly">Weekly
                             <input id="c" type="radio" name="type" value="Monthly">Monthly</h5>

                                    <div class="customer">
                                        <div class="input-group">
                                            <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                                            <input type="date" class="form-control" placeholder="Date" />
                                        </div>
                                    </div>
                                    </br>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                                    <br />
                                </div>
                                <div class="panel-body">

                                    <table class="table table-bordered">
                                       
                    <thead>
                        <tr>
                            <th>programme ID</th>
                            <th>First Name</th>
                            <th>Status</th>
                            <th>Duration</th>
                            <th>coordinator ID</th>

                    </thead>
                                        }
                                    </table>
                                    <table class="table table-bordered">
                                        <tr>
                                            <th>Complaint ID</th>
                                            <th>Complaint Type</th>
                                            <th>Description</th>
                                            <th>Student Number</th>
                                            <th>Residence Name</th>
                                            <th>Address</th>

                                        </tr>

                                    </table>
                                    <table class ="table table-bordered">
                                        <tr>
                                            <th>Programe ID</th>
                                            <th>Programe Name</th>
                                            <th>Status</th>
                                            <th>Duration</th>
                                            <th>coordinatorID</th>
                                            <

                                        </tr>
                                    </table>
                                   

                                        <div class="text-center">
                                            <h4>
                                                <label style="color: #E74C3C" for="Total">Total :</label></h4>
                                            <asp:Label ID="Label1" runat="server" EnableViewState="False"></asp:Label>

                                        </div>
                                    </td>
                                    </tr>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>







