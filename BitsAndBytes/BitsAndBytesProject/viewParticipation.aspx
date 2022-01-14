﻿<%@ Page Language="C#" MasterPageFile="~/liason.Master" AutoEventWireup="true" CodeBehind="viewParticipation.aspx.cs" Inherits="BitsandBytesProject.viewParticipation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
   Participation
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet"  href="Login/vendor/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet"  href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet"  href="Login/fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet"  href="Login/vendor/animate/animate.css"/>	
	<link rel="stylesheet"  href="Login/vendor/css-hamburgers/hamburgers.min.css"/>
	<link rel="stylesheet"  href="Login/vendor/animsition/css/animsition.min.css"/>
	<link rel="stylesheet"  href="Login/vendor/select2/select2.min.css"/>
	<link rel="stylesheet" href="Login/vendor/daterangepicker/daterangepicker.css"/>
	<link rel="stylesheet"  href="Login/css/util.css"/>
	<link rel="stylesheet"  href="Login/css/main2.css"/>	
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
        html, body, h1, h2, h3, h4, h5, h6 {
            font-family: "Roboto", sans-serif
        }

        

        /*.topnav {
          float: right;*/
          /*margin-left: 15px;
          position: relative;*/
          /*overflow: hidden;
          background-color: #052885;
        }

        .topnav a {
          color: #f2f2f2;
          text-align: center;
          padding: 14px 16px;
          text-decoration: none;
          font-size: 17px;
        }

        .topnav a:hover {
          background-color: #ddd;
          color: black;
        }

        .topnav a.active {
          background-color: #4CAF50;
          color: white;
        }*/

        .GvGrid:hover
        {
            background-color: #f7e70c;
            border-top: solid;
            color:#9C6500;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
      <div class="limiter">
		<div class="container-login100" style="background-image: url('Styles/overlay2.png');">
			<div class="wrap-login100">
				<div class="login100-form validate-form" runat="server">					

					<span class="login100-form-title p-b-34 p-t-27">
					Participation
					</span>
                     <span class="form-group">
            <asp:Label ID="Label1" runat="server" Text="View By Status: "></asp:Label>
            <asp:DropDownList ID="Select" runat="server" class="form-control" AutoPostBack="true">
                <asp:ListItem Text="--Select Here--"></asp:ListItem>
                <asp:ListItem Text="Present" Value="Submitted"></asp:ListItem>
                <asp:ListItem Text="Absent" Value="Pending"></asp:ListItem>
               
            </asp:DropDownList>
               
        </span>
                    <hr />
					<span class="form-group">
                        <asp:TextBox ID="Date" runat="server" Visible="false"></asp:TextBox>
                        <asp:GridView ID="GridView1" runat="server" class="table table-bordered table-striped" RowStyle-CssClass="GvGrid" RowDataBound="GridView1_RowDataBound"  DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="OnRowDataBound" BackColor="White" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="Full Name" HeaderText="Full Name" SortExpression="Full Name" ReadOnly="True" />
                                <asp:BoundField DataField="StudentNumber" HeaderText="Student Number" SortExpression="StudentNumber" />
                                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                <asp:BoundField DataField="activity" HeaderText="activity" SortExpression="activity" />
                                <asp:BoundField DataField="Prefered Language" HeaderText="Prefered Language" SortExpression="Prefered Language" />
                            </Columns>
<RowStyle CssClass="GvGrid"></RowStyle>
                    </asp:GridView>
                        <asp:Label ID="Label3" runat="server" Text="* Click On Row to view Participation Details *:" ForeColor="Red" ></asp:Label><br />
					</span>
                    <br />                  
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbConn %>" SelectCommand="ParticipationByStatus" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                    <asp:ControlParameter ControlID="Select" DefaultValue="Submitted" Name="ParticipationStatus" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                    </asp:SqlDataSource>
				</div>
			</div>				
		</div>
	</div>
</asp:Content>
