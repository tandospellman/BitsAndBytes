<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="BitsandBytesProject.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    My Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet"  href="Login/vendor/bootstrap/css/bootstrap.min.css"/>
	<link rel="stylesheet"  href="Login/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
	<link rel="stylesheet"  href="Login/fonts/iconic/css/material-design-iconic-font.min.css"/>
	<link rel="stylesheet"  href="Login/vendor/animate/animate.css"/>	
	<link rel="stylesheet"  href="Login/vendor/css-hamburgers/hamburgers.min.css"/><a href="Site.Master">Site.Master</a>
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
					 Your Details
					</span>
				
			</div>
                <div class="form-group" >
                  
            <asp:Table ID="Table1" runat="server" class="centre">	
                          
				<asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label4" runat="server" Text="First Name:"></asp:Label>
                </asp:TableCell>
                    </asp:TableRow>               
                <asp:TableRow>
                    <asp:TableCell>
               <asp:TextBox ID="txtfirstname" class="form-control" runat="server"  Width="450px" ></asp:TextBox>
				    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
					<asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Name is required" ControlToValidate="txtfirstname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></asp:TableCell>
					</asp:TableRow>


                <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="Label6" runat="server" Text="Last Surname:"></asp:Label>
                </asp:TableCell>
				</asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell>
               <asp:TextBox ID="txtlastname" class="form-control" runat="server"  Width="450px" ></asp:TextBox>
				    </asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Surname is required" ControlToValidate="txtlastname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>	
                          

				<asp:TableRow>
                    
				<asp:TableCell>
                    <asp:Label ID="Label1" runat="server" Text="Province"></asp:Label> 
				</asp:TableCell>
                    
				</asp:TableRow>
               
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:DropDownList ID="cmbprovince" class="form-control" runat="server" name="cmbprovince" Width="450px">
                    <asp:ListItem Text="--Select Province--"></asp:ListItem>
                    <asp:ListItem Text="Eastern Cape" Value="EC"></asp:ListItem>
                    <asp:ListItem Text="Western Cape" Value="WC"></asp:ListItem>
                    <asp:ListItem Text="Northen Cape" Value="NC"></asp:ListItem>
                    <asp:ListItem Text="Guateng" Value="GP"></asp:ListItem>
                </asp:DropDownList>
                    </asp:TableCell>
                    </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>                    
                        <asp:RequiredFieldValidator runat="server" ErrorMessage="Please indicate the Year of work" ControlToValidate="cmbStudyYear" ForeColor="Red" SetFocusOnError="True" InitialValue="0" Display="Dynamic"></asp:RequiredFieldValidator>
                    </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                    <asp:Label ID="Label2" runat="server" Text="Email:"></asp:Label>
                    </asp:TableCell>                    
                      </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="txtemail" class="form-control" runat="server"  Width="450px" ></asp:TextBox>
                    </asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid Email Address" ForeColor="Red" ControlToValidate="txtemail" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>					
				</asp:TableRow>
                <asp:TableRow>
					<asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Email Address" ControlToValidate="txtemail" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></asp:TableCell>
                    </asp:TableRow>

                 <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblphone" runat="server" Text="Mobile Number:"></asp:Label> 
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:TextBox ID="contact" class="form-control" runat="server"  Width="450px" ></asp:TextBox>
                    </asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:RegularExpressionValidator runat="server" ErrorMessage="Invalid Phone number" ForeColor="Red" ControlToValidate="txtphone" ValidationExpression="^((?:\+27|27)|0)(\d{2})-?(\d{3})-?(\d{4})$" SetFocusOnError="True" Display="Dynamic"></asp:RegularExpressionValidator>
                    </asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:RequiredFieldValidator runat="server" ErrorMessage="Enter Your Cell number" ControlToValidate="txtphone" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator></asp:TableCell>
                </asp:TableRow>

    </asp:Table> 
                     <div style="text-align:center; margin-top:2em">
                <asp:Button ID="btnEdit" runat="server" Text="Edit" class="btn btn-sm btn-warning" OnClick="btnEdit_Click"  />
                <asp:Button ID="btnUpdate" runat="server" Text="Update" class="btn btn-sm btn-danger" OnClick="btnUpdate_Click"  />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" class="btn btn-primary"  />
			</div>
                </div>
           </div>
                </div> 
    </div>
</asp:Content>