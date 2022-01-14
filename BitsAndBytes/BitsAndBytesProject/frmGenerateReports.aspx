<%@ Page Title="" Language="C#" MasterPageFile="~/CoordinatorMaster.Master" AutoEventWireup="true" CodeBehind="frmGenerateReports.aspx.cs" Inherits="BitsAndBytesProject.WebForm12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <script src="DataTables/jQuery-3.3.1/jquery-3.3.1.js"></script>
    <link rel="stylesheet" type="text/css" href="DataTables/datatables.css" />
    <script src="DataTables/datatables.js"></script>
    <link href="DataTables/Buttons-1.6.5/css/buttons.jqueryui.css" rel="stylesheet" />
    <script src="DataTables/Buttons-1.6.5/js/buttons.jqueryui.js"></script>
    <script src="DataTables/Buttons-1.6.5/js/buttons.flash.min.js"></script>
    <script src="DataTables/JSZip-2.5.0/jszip.min.js"></script>
    <script src="DataTables/pdfmake-0.1.36/pdfmake.min.js"></script>
    <script src="DataTables/Buttons-1.6.5/js/buttons.print.min.js"></script>
    <script src="DataTables/pdfmake-0.1.36/vfs_fonts.js"></script>
     <script>
         $(document).ready(function () {
             $.ajax({
                 url: 'ReportService.asmx/GetAttendanceData',
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
                             { 'data': 'studentID' },
                             { 'data': 'firstname' },
                             { 'data': 'surname' },
                             { 'data': 'activityID' },
                             { 'data': 'topic' },
                             { 'data': 'total' },
                         ]
                     });
                 }
             });

         });

     </script>


    <div class="content-wrapper">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Generate Reports</h4>
                <br />
              
                <table id="datatable" style="padding: 0 !important; margin-left: 10px!important;">
                    <thead>
                        <tr>
                            <th>Pupil ID</th>
                            <th>First Name</th>
                            <th>Surname</th>
                            <th>Activity ID</th>
                            <th>Activity Name</th>
                            <th>Total Attendance</th>
                        </tr>
                    </thead>
                </table>
                <br />

            </div>
        </div>
    </div>
</asp:Content>
