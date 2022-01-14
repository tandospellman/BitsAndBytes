<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Medicine_Parent.aspx.cs" Inherits="BitsAndBytes.Nutrition_Parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Medicine Admin</title>
	<link rel="icon" type="image/ico" href="images/bbimages/bblogo.jfif" />

	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no" />

	<link rel="stylesheet" href="Content/bootstrap.min.css" />
	<link rel="stylesheet" href="css/main_css.css" />

	<script src="Scripts/jquery-3.0.0.min.js"></script>
	<script src="Scripts/bootstrap.min.js"></script>
	<script src="Scripts/popper.min.js"></script>

	<!-- Jquery Script -->
    <script type="text/javascript" src="jquery/jquery.js" ></script>

	<!-- Scrollbar Custom CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css"/>

	<!-- Font Awesome JS -->
	<script defer src ="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>
<body>
	<form id="form1" runat="server">
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
			<!-- Page Content -->
			<div class="content" id="content">
				<!-- Static Navbar -->
				<nav class="navbar navbar-expand-lg">
					<div class="container-fluid">
						<!-- Menu Button -->
						<button type="button" id="sidebarCollapse" class="btn btn-info" hidden="hidden" >
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
								<li class="nav-item navItems" src="images/bbimages/information.png">
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
											<img src="images/bbimages/login.png" class="navbarIcon" id="btnLogout" alt="Logout Icon" />
											<span>Logout</span>
										</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</nav>

				<!-- Heading -->
				  <h1>	
                           <img alt="mm" class="auto-style5" height="85" src="images/bbimages/medicine.png" width="125" /></h1>
				<h1>Medicine Administration Chart</h1>

				<!-- Page Body -->
				<div id="regForm"  style=" position:relative; left: 0px;">
					<!-- Progress Bar -->
					<div class="progBar" hidden ="hidden">
                        <ul id="progressBar" class="list-unstyled">
						    <li class="active">Student Details</li>
						    <li class="label">Medicine Details</li>
						    <li class="label">Parent Details</li>
					    </ul>
					</div>

                    <!-- Personal Details -->
                    <fieldset id="fsPersonalDetails" runat="server">
                        <h2 class="fsTitle">Create Medicine Chart</h2>
                        <h3 class="fsSubtitle">This is step 1 of 3</h3>
                        <div>
                            <!-- First Name -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="cmbSelectStudent" Text="Child Name" Font-Size="X-Large"></asp:Label>
                            <span>
                            <asp:DropDownList ID="cmbSelectStudent" CssClass="textBox" runat="server" OnSelectedIndexChanged="cmbSelectStudent_SelectedIndexChanged" AutoPostBack="True" Width="150px" DataSourceID="DsPupil" DataTextField="firstName" DataValueField="firstName">
                                <asp:ListItem Value="1">Select Student</asp:ListItem>
                            </asp:DropDownList>
                           
                                <asp:SqlDataSource ID="DsPupil" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT [firstName] FROM [tblPupil] WHERE ([parentID] = @parentID)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</span>
                                
                            </div>
                            <!-- Surname -->

							
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
                            <asp:Button ID="btnNext1" CssClass="mainButton" runat="server" Text="Next" OnClick="btnNext1_Click" />
                            <span>
         <asp:Label ID="lblStudent" runat="server" CssClass="label" ></asp:Label>
							</span>
                        </div>
                    </fieldset>

                    <!-- medical -->
                    <fieldset id="fsMedicine" runat="server">
                        <h2 class="fsTitle">Enter Medicine details</h2>
                        <h3 class="fsSubtitle">This is step 2 of 3</h3>
                        <div>
                            <!-- Name medicine -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtNameMedi" Text="Name Of Medicine:" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtNameMedi"></asp:TextBox>
                            </div>
                           
                             <!-- instructions medicine -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtInstruct" Text="Instructions of Parent/Guardian:" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtInstruct" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            
                             <!-- freq  medicine -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtfreq" Text="Frequency:" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" TextMode="Number" ID="txtfreq"></asp:TextBox>
                            </div>

							 <!-- dosage medicine -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtdos" Text="Dosage (ml)" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" TextMode="Number" ID="txtdos"></asp:TextBox>
                            </div>

							 <!-- Date of medic -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtDate" Text="Date to administor:" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox TextMode="Date" runat="server" ID="txtDate" CssClass="textBox"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
						<asp:Button ID="btnPrevious1" CssClass="previous mainButton" runat="server" Text="Previous" OnClick="btnPrevious1_Click" />
                        <asp:Button ID="btnNext2" CssClass="next mainButton" runat="server" Text="Next" OnClick="btnNext2_Click" />
                        </div>
                    </fieldset>

                    <!-- Parent Details -->
                    <fieldset id="fsContact" runat="server">
                        <h2 class="fsTitle">Emergency Contact details</h2>
                        <h3 class="fsSubtitle">This is step 3 of 3</h3>
                        <div>
                            <!-- First Name -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtFirstName" Text="First Name" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtFirstName"></asp:TextBox>
                                
                            </div>

							 <!-- Contact Name -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtContact" Text="Emergancy Contact:" Font-Size="X-Large" Width="205px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtContact"></asp:TextBox>
                                
                            </div>
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
                            <asp:Button ID="btnPrevious2" CssClass="previous mainButton" runat="server" Text="Previous" OnClick="btnPrevious2_Click" />
                            <asp:Button ID="btnSubmit" CssClass="submit mainButton" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
                            
                            <asp:Label ID="lblStudSuccess" runat="server" Text=" Status :"  Height="25px" Width="448px" Font-Size="X-Large"></asp:Label>
                           
                        </div>
                    </fieldset>

					 

				</div>
				<div class="footer">
                <asp:Label ID="lblLoggedInAs" runat="server" Text="Logged in as "></asp:Label>
               <img src="images/bbimages/bblogo.jfif" class="img-fluid w-25 p-3" alt="AutoClinic.Exe Logo" />

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