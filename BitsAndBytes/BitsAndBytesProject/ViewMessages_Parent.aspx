<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMessages_Parent.aspx.cs" Inherits="BitsAndBytes.ViewMessages_Parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Messages</title>
    <link rel="icon" type="image/ico" href="images/bbimages/bblogo.jfif" />

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
        #divStudentInfo {
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="frmAddCustomer" runat="server">
         <div class="wrapper">
			 <!-- Sidebar -->
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
						<button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse"
							data-target="#navbarSupportedContents" aria-controls="navbarSupportedContents" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fas fa-align-justify"></i>
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
										<a class="nav-link" href="LoginPage.aspx">
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
					<div>	
                         
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
								<a href="Complaints_Parent.aspx">Complaints</a>
							</li>
				
						</ul>
					
					</li>
					<!-- Medicine -->
					<li>
						<a href="#NutritionSubMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Medicine</a>
					
						<ul class="collapse list-unstyled" id="NutritionSubMenu">
							<li>
								<a href="Medicine_Parent.aspx">Medicine Chart</a>
							</li>
				
						</ul>
					
					</li>



					<!-- Applications -->
					<li>
						<a href="#ApplicationsSubMenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Applications</a>
					
					<ul class="collapse list-unstyled" id="ApplicationsSubMenu">
							<li>
								<a href="Applications_Parent.aspx">Create Applications</a>
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
						<a href="Login_Parent.aspx">Logout</a>
					</li>
				    <li></li>
				</ul>
			</nav>
                </div>
					
                       
				
				
				<h2 cssclass="h1">
					View<img alt="tt" class="auto-style4" src="images/bbimages/teacher.png" width="125" />Announcements</h2>
				<!-- Page Body -->
				<div id="regForm" style="position:relative">
                   
					 <fieldset id="fsContact" runat="server">
                        <h2 class="fsTitle">Teacher announcements</h2>
                        <div>
                            
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="cmbDate" Text="Select Date:" Font-Size="X-Large"></asp:Label>
                             
										<asp:DropDownList ID="cmbDate" CssClass="textBox" runat="server" OnSelectedIndexChanged="cmbSelectStudent_SelectedIndexChanged" AutoPostBack="True" Width="215px" DataSourceID="DSDate" DataTextField="date" DataValueField="date">
                                <asp:ListItem Value="1">Select Student</asp:ListItem>
                            </asp:DropDownList>
                           
                                
                        
                                
                            </div>

						
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtTeacherName" Text="Teacher Name:" Font-Size="X-Large"></asp:Label>
                            <span>
                           
                                <asp:TextBox CssClass="textBox" id="txtTeacherName" runat="server" ReadOnly="True"></asp:TextBox>
                           
                             </span>
                                
                            </div>

							 <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtMessage" Text="Announcement:" Font-Size="X-Large"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtMessage" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>

                            </div>
                        </div>

                        <!-- Navigation Buttons -->
                    </fieldset>

                    <div runat="server" id="divUpdateStudent">
                        <!--  Information -->
                        <div runat="server" id="divStudentInfo">
                            
							<div>
								<div>
                                    <div class="inputContainer">
                                        <asp:SqlDataSource ID="DSDate" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT [date] FROM [tblMessage] WHERE ([subject] = @subject)">
                                            <SelectParameters>
                                                <asp:Parameter DefaultValue="Parents" Name="subject" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                           
                            
                            

         <asp:Label ID="lblmessage0" runat="server" ></asp:Label>
                
            
                            

							</div>
							 <!-- Subject -->
							<!-- Description -->
                         
                            
                          
                        </div>

                        

                        <!--  Buttons -->
                        <div>
                           
                           
                        </div>
                    </div>
				</div>

			</div>

		</div>
				<div class="footer">
               <img src="images/bbimages/bblogo.jfif" class="img3" alt="AutoClinic.Exe Logo" />

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
</body>
</html>
