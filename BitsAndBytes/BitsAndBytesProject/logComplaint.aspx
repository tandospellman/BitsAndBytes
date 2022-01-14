<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="logComplaint.aspx.cs" Inherits="BitsandBytesProject.logComplaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Log Complaint
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="Login/vendor/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="Login/fonts/iconic/css/material-design-iconic-font.min.css" />
    <link rel="stylesheet" href="Login/vendor/animate/animate.css" />
    <link rel="stylesheet" href="Login/vendor/css-hamburgers/hamburgers.min.css" />
    <link rel="stylesheet" href="Login/vendor/animsition/css/animsition.min.css" />
    <link rel="stylesheet" href="Login/vendor/select2/select2.min.css" />
    <link rel="stylesheet" href="Login/vendor/daterangepicker/daterangepicker.css" />
    <link rel="stylesheet" href="Login/css/util.css" />
    <link rel="stylesheet" href="Login/css/main2.css" />
    <script src="Login/vendor/jquery/jquery-3.2.1.min.js"></script>
    <script src="Login/vendor/animsition/js/animsition.min.js"></script>
    <script src="Login/vendor/bootstrap/js/popper.js"></script>
    <script src="Login/vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="Login/vendor/select2/select2.min.js"></script>
    <script src="Login/vendor/daterangepicker/moment.min.js"></script>
    <script src="Login/vendor/daterangepicker/daterangepicker.js"></script>
    <script src="Login/vendor/countdowntime/countdowntime.js"></script>
    <script src="Login/js/main.js"></script>
    <style>
        .GvGrid:hover {
            background-color: #f7e70c;
            border-top: solid;
            color: #9C6500;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="limiter">
        <div class="container-login100" style="background-image: url('Styles/overlay2.png');">
            <div class="wrap-login100">
                <div class="login100-form validate-form" runat="server">

                    <span class="login100-form-title p-b-34 p-t-27">Log Complaint
                    </span>

                    <div class="form-group">

                        <strong>
                            <asp:Label ID="Label2" runat="server" ForeColor="DarkBlue" Text="Date Of Incident : "></asp:Label></strong>
                        <div id="myID" runat="server">
                            <input type="date" id="date" name="date" class="form-control" />
                        </div>

                    </div>

                    <div class="form-group">
                        <strong>
                            <asp:Label ID="Label3" runat="server" ForeColor="DarkBlue" Text="Select Nature Of Complaint : "></asp:Label></strong>
                        <asp:DropDownList ID="Select1" runat="server" class="form-control" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="complaintID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbConn %>" SelectCommand="sp_complaint" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>

                    <div class="form-group">
                        <strong>
                            <asp:Label ID="Label1" runat="server" ForeColor="DarkBlue" Text="Describe What The Complaint Is About In Detail : "></asp:Label></strong>
                        <asp:Table ID="Table1" runat="server" Height="92px" Width="780px">
                            <asp:TableRow>
                                <asp:TableCell>
                                    <asp:TextBox ID="txtMessage" class="form-control" runat="server" placeholder="What? Where? How?" TextMode="MultiLine"></asp:TextBox>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Please enter your message" ControlToValidate="txtMessage" ForeColor="Red"></asp:RequiredFieldValidator></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>



                    <div class="text-center">
                        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="File Complaint" CausesValidation="true" OnClick="Button1_Click" />

                    </div>
                    <br />
                    <div class="text-center">
                        <strong>
                            <asp:Label ID="lblError" runat="server" ForeColor="DarkBlue" Text="Sorry :( <br/> This Option Is Not Available To You <br/>Only Pipul Can Log A Complaint"></asp:Label></strong>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.getElementById('date').value = moment().format('YYYY-MM-DD');
        $(function () {
            var dtToday = new Date();

            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if (month < 10)
                month = '0' + month.toString();
            if (day < 10)
                day = '0' + day.toString();

            var maxDate = year + '-' + month + '-' + day;
            $('#date').attr('max', maxDate);
        });
    </script>
</asp:Content>
