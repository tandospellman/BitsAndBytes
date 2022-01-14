<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard_Parent.aspx.cs" Inherits="BitsAndBytes.Dashboard_Parent" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parent Dashboard</title>
    <link rel="icon" type="image/ico" href="images/bbimages/bblogo.png" />

	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no" />

	<link rel="stylesheet" href="Content/bootstrap.min.css" />
	<link rel="stylesheet" href="css/main_css.css" />

    <!-- Jquery Script -->
    <script type="text/javascript" src="jquery/jquery.js" ></script>

	<script src="Scripts/jquery-3.0.0.min.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>
	<script src="Scripts/popper.min.js"></script>

	
	<!-- Scrollbar Custom CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css"/>

	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
    <style type="text/css">
        .auto-style1 {
            width: 131px;
            height: 90px;
        }
        .auto-style2 {
            width: 128px;
            height: 83px;
        }
        .auto-style3 {
             width: 128px;
            height: 83px;
        }
        .auto-style4 {
            width: 128px;
            height: 83px;
        }
        .auto-style5 {
            width: 128px;
            height: 83px;
        }
        .auto-style6 {
            width: 128px;
            height: 83px;
        }
        .auto-style7 {
             width: 128px;
            height: 83px;
        }
        .auto-style8 {
             width: 128px;
            height: 83px;
        }
    </style>
    </head>
<body>
    <form id="frmAddCustomer" runat="server">
         <div class="wrapper">
			    <!-- Sidebar -->
			<nav class="sidebar" id="sidebar">
				<div class="sidebarHeader">
					<h2>Menu</h2>
				</div>

				<!-- Sidebar Contents -->
				<ul class="list-unstyled components">
					<!-- Home -->
					<li>
						<a href="Dashboard_Parent.aspx">Home</a>
					</li>
					<!-- Record -->
					<li>
						<a href="#UserSubMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Academic Record</a>
						<ul class="collapse list-unstyled" id="UserSubMenu">
							<li>
								<a href="AcademicRecord_Parent.aspx">View Academic Record</a>
							</li>
							
							
						</ul>
					</li>

					

					<!-- Complaints -->
					<li>
						<a href="#PaymentsSubMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Complaints</a>
					
						<ul class="collapse list-unstyled" id="PaymentsSubMenu">
							<li>
								<a href="Complaints_Parent.aspx">View Complaints</a>
							</li>
				
						</ul>
					
					</li>
					<!-- Medicine -->
					<li>
						<a href="#NutritionSubMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Medicine</a>
					
						<ul class="collapse list-unstyled" id="NutritionSubMenu">
							<li>
								<a href="Medicine_Parent.aspx">Create Medicine Chart</a>
							</li>
				
						</ul>
					
					</li>



					<!-- Applications -->
					<li>
						<a href="#ApplicationsSubMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Applications</a>
					
					<ul class="collapse list-unstyled" id="ApplicationsSubMenu">
							<li>
								<a href="Applications_Parent.aspx">Create Application</a>
							</li>
							<li>
								<a href="Applications_Parent.aspx">View Status</a>
							</li>
							
						</ul>
					</li>

					<!-- Help -->
					<li>
						<a href="#">Help</a>
					</li>
					<!-- Contact Us -->
					<li>
						<a href="ContactUs_Parent.aspx">Contact Us</a>
					</li>
					<!-- Logout -->
					<li>
						<a href="Default.aspx">Logout</a>
					</li>
				    <li></li>
				</ul>
			</nav>
            <!-- Page Content -->
			<div class="content" id="content">
				<!-- Static Navbar -->
				<nav class="navbar navbar-expand-lg">
					<div class="container-fluid">
						<!-- Menu Button -->
						<button type="button" id="sidebarCollapse" class="btn btn-info" hidden="hidden">
							<i class="fas fa-align-left"></i>
							<span>Menu</span>
						</button>

						<!-- Navbar -->
						<div class="collapse navbar-collapse" id="navbarSupportedContents">
							<ul class="navbar-nav ml-auto">
								<li class="nav-item navItems">
									<div class="navIconContainer">
										<a class="nav-link" href="Help_Parent.aspx">
											<img src="images/bbimages/information.png" class="navbarIcon" id="btnHelp" alt="Help Icon" />
											<span>Help</span>
										</a>
									</div>
								</li>
								<li class="nav-item navItems">
									<div class="navIconContainer">
										<a class="nav-link" href="ContactUs.aspx">
											<img src="images/bbimages/mail.png" class="navbarIcon" id="btnMessage" alt="Contact Us Icon" />
											<span>Contact Us</span>
										</a>
									</div>
								</li>
								<li class="nav-item navItems">
									<div class="navIconContainer">
										<a class="nav-link" href="Default.aspx">
											<img src="images/bbimages/logout%20(1).png" class="navbarIcon" id="btnLogout" alt="Logout Icon" />
											<span>Logout</span>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</nav>

				<!-- Heading -->
				<!-- Page Body -->

				
                    
                    <div runat="server" id="divUpdateStudent">
                        <div runat="server" id="divStudentInfo">
                           
                            <div class="dashboardIconContainer">
                              <img alt="r" class="auto-style1" src="images/bbimages/register.png" width="125" />
							<asp:Button ID="btnApp" CssClass="mainButton" runat="server" Text="Create Student Application" OnClick="btnApp_Click" Width="252px"/>

                           
						
                            </div>

							
                            <div class="dashboardIconContainer">
                               <img alt="a" class="auto-style2"  src="images/bbimages/academic.png" width="125" /> 
								<asp:Button ID="btnAcad" CssClass="mainButton" runat="server" Text="View Academic Record" OnClick="btnAcad_Click" Width="252px"/>
                            </div>
							
                            <div class="dashboardIconContainer">
										
										<br />
								<img alt="c" class="auto-style3" src="images/bbimages/calendar.png" width="125" /> 
								<asp:Button ID="btnSched" CssClass="mainButton" runat="server" Text="View Daily Schedule" OnClick="btnSched_Click" Width="252px"/>

                          
                            </div>
         
                            
                            <div class="dashboardIconContainer">
								<img alt="tt" class="auto-style4" src="images/bbimages/teacher.png" width="125" /> 
								<asp:Button ID="btnPay" CssClass="mainButton" runat="server" Text="View Messages" OnClick="btnPay_Click" Width="252px"/>
                            </div>

							 <div class="dashboardIconContainer">
                               <img alt="mm" class="auto-style5"  src="images/bbimages/medicine.png" width="125" /> 
								 <asp:Button ID="btnNutri" CssClass="mainButton" runat="server" Text="Medicine Chart" OnClick="btnNutr_Click" Width="252px"/>
                            </div>

							 <div class="dashboardIconContainer">
                                <img alt="ccc" class="auto-style6" src="images/bbimages/complaint.png" width="125" /> 
                                 <asp:Button ID="btnCom" CssClass="mainButton" runat="server" Text="Complaints" OnClick="btnCom_Click" Width="252px"/>
                            </div>

							 <div class="dashboardIconContainer">
                              
                              <img alt="eed" class="auto-style7"  src="images/bbimages/edit.png" width="125" />
								 <asp:Button ID="btnInfo" CssClass="mainButton" runat="server" Text="Update Info" OnClick="btnInfo_Click" Width="252px"/>
                            </div>

							<div class="dashboardIconContainer">
                               <img alt="sssd" class="auto-style8"  src="images/bbimages/graduates.png" width="125" /> 
								<asp:Button ID="btnSick" CssClass="mainButton" runat="server" Text="Attendance Report" OnClick="btnSick_Click" Width="252px"/>
                            </div>
                          
                        </div>

                        

                        
                    </div>
				</div>
			</div>
		</div>
    </form>
    <!-- Sidebar code found on https://bootstrapious.com/p/bootstrap-sidebar -->

	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<!-- Popper.JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
	<!-- Bootstrap JS -->
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
	<!-- jQuery Custom Scroller CDN -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>

	<script type="text/javascript">
        $(document).ready(function () {
            $("#sidebar").mCustomScrollbar({
                theme: "minimal"
            });

            $('#sidebarCollapse').on('click', function () {
                $('#sidebar, #content').toggleClass('active');
                $('.collapse.in').toggleClass('in');
                $('a[aria-expanded=true]').attr('aria-expanded', 'false');
            });
        });
    </script>
    <p>
        &nbsp;</p>
</body>
</html>
