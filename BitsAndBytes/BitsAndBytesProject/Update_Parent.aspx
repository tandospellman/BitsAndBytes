<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update_Parent.aspx.cs" Inherits="BitsAndBytes.Update_Parent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Users</title>
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
	<script  src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script  src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>
<body>
    <form id="frmEditUsers" runat="server">
        <div id="wrapper">
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
				<h1>Edit User 
                    <img alt="eed" class="auto-style7" height="85" src="images/bbimages/edit.png" width="125" /> Details</h1>
  
                
				<!-- Page Body -->
				
				<div id="regForm" style="position:relative; left: 0px;">
                    
                    <div class="inputContainer" runat="server" id="divSearchByStudent">
                        <asp:Label runat="server" AssociatedControlID="txtStudName" Text="User Name:" CssClass="label" ID="txtStudent"></asp:Label>
                        <asp:TextBox CssClass="textBox" ID="txtStudName" runat="server" TextMode="Search"></asp:TextBox>
						 <asp:RequiredFieldValidator runat="server" ID="lblStud" ControlToValidate="txtStudName" ErrorMessage="Please enter user name!" CssClass="errorMessage"></asp:RequiredFieldValidator>

                        <asp:Button ID="btnSearch" CssClass="mainButton" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </div>
                    <!-- Search button -->
                    <div style="margin-left: 80px">
                        <asp:Label ID="lblNotFound" runat="server" AssociatedControlID="btnSearch" Text=" " ForeColor="Red"></asp:Label>
                        <br />
                            <asp:Button ID="btnUpdateP" CssClass="mainButton" runat="server" Text="Update Parent Details" OnClick="btnUpdateP_Click" />
                            <asp:Button ID="btnUpdateSt" CssClass="mainButton" runat="server" Text="Update Student Details" OnClick="btnUpdateSt_Click" />
                    </div>
                    <br />

					<div runat="server" id="divUpdateStudent">

						

                        <!-- student Personal Information -->
                        <div runat="server" id="divStudentPersonalInfo">

                     <fieldset id="fschild" runat="server">
                        <h2 class="fsTitle">Update Child Info</h2>
                        
                        <div>
                             <!-- Allergies -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtSurname" Text="First Name:" Font-Size="X-Large" Width="120px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtStudFName" runat="server"></asp:TextBox>
                            </div>

							 <!-- illnesses -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtill" Text="Lastname" Font-Size="X-Large" Width="120px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtStudSurname" runat="server"></asp:TextBox>
                            </div>

							 <!-- doc -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtDOB" Text="Date of Birth:" Font-Size="X-Large" Width="120px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtDOB" runat="server" TextMode="DateTime"></asp:TextBox>
                            </div>

							 <!-- doc contact -->
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
                            <asp:Button ID="btnNext2" CssClass="next mainButton" runat="server" Text="Next" OnClick="btnNext2_Click" />
                            
                        </div>
                    </fieldset>

						 <fieldset id="fsmedical" runat="server">
                        <h2 class="fsTitle">Update Medical History Form:</h2>
                        <h3 class="fsSubtitle">Child Medical Details</h3>
                        <div>
                             <!-- Allergies -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtAllergy" Text="Child Allergies:" Font-Size="X-Large" Width="160px"></asp:Label>
                                <asp:TextBox runat="server" TextMode="MultiLine" CssClass="textBox" ID="txtAllergy"></asp:TextBox>
                            </div>

							 <!-- illnesses -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtill" Text="Communicable illnesses:" Font-Size="X-Large" Width="160px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtill" TextMode="MultiLine"></asp:TextBox>
                            </div>

							 <!-- doc -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtdoct" Text="Health Practitioner Name:" Font-Size="X-Large" Width="160px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtdoct"></asp:TextBox>
                            </div>

							 <!-- doc contact -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtdocnum" Text="Health Practitioner Tel:" Font-Size="X-Large" Width="160px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtdocnum"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
                            <asp:Button ID="btnPrevious1" CssClass="previous mainButton" runat="server" Text="Previous" OnClick="btnPrevious1_Click" />
                            <asp:Button ID="btnUpdateStud" CssClass="mainButton" runat="server" Text="Update Details" OnClick="btnUpdateStud_Click" />
                            <asp:Button ID="btnUnregisterStud" CssClass="mainButton" runat="server" Text="Unregister Child" OnClick="btnUnregisterchild_Click" />
                            
                             <asp:Label ID="lblStudent" runat="server" CssClass="label" ></asp:Label>
                            
                            <div class="inputContainer">
                            
                            <asp:Label ID="lblStudSuccess" runat="server" AssociatedControlID="btnUpdateStud" Text=" Status :"  Height="25px" Width="448px" Font-Size="X-Large"></asp:Label>
                           
                            </div>
                            
                        </div>
                    </fieldset>
							</div>

						  <!-- student Personal Information -->
                        <div runat="server" id="divUnregister">
                            
                            <fieldset id="fsunregister" runat="server">
                        <h2 class="fsTitle">Unregistor child</h2>
                        
                        <div>
                             <!-- Allergies -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtSurname" Text="Child Name:" Font-Size="X-Large" Width="205px"></asp:Label>
                               
                            <span>
                            <asp:DropDownList ID="cmbSelectStudent" CssClass="textBox" runat="server" OnSelectedIndexChanged="cmbSelectStudent_SelectedIndexChanged" AutoPostBack="True" Width="150px" DataSourceID="DSPupil" DataTextField="firstName" DataValueField="firstName">
                                <asp:ListItem Value="1">Select Student</asp:ListItem>
                            </asp:DropDownList>
                           
							</span>
                                
                            </div>

							 <!-- illnesses -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtReason" Text="Reason:" Font-Size="X-Large" Width="259px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtReason" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>

							 <!-- doc -->
                            <div class="inputContainer" id="lblUnregisterSuccess">
                            <asp:Label ID="lblUnregister" runat="server" AssociatedControlID="btnUnregister" Text=" Status :" Height="25px" Width="203px" Font-Size="X-Large"></asp:Label>
                            </div>

							 <!-- doc contact -->
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
                            <asp:Button ID="btnUnregister" CssClass="mainButton" runat="server" Text="Unregister" OnClick="btnUnregister_Click" />
                            
                        </div>
                    </fieldset>


                            <!-- child -->
                            <div class="inputContainer">
                                <span>
                           
                                <asp:SqlDataSource ID="DSPupil" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT [firstName] FROM [tblPupil] WHERE ([parentID] = @parentID)">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="1" Name="parentID" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
							</span>
                                
                            </div>
                            <!-- reason -->
                           

							 <div class="inputContainer">
                            <span>
         
							</span>
                            </div>
         
							</div>
                       <!-- Parent Information -->
                        <div runat="server" id="divParentInfo">

                            <fieldset id="Fieldset3" runat="server">
                        <h2 class="fsTitle">Parent/guardian Details</h2>
                        
                        <div>
                             <!-- Allergies -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtFirstName" Text="First Name:" Font-Size="X-Large" Width="115px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtFirstName" runat="server"></asp:TextBox>
                            </div>

							 <!-- illnesses -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtSurname" Text="Lastname" Font-Size="X-Large" Width="115px"></asp:Label>
                                <asp:TextBox runat="server" CssClass="textBox" ID="txtSurname"></asp:TextBox>

                            </div>

							 <!-- doc -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="txtEmail" Text="Email Address:" Font-Size="X-Large" Width="114px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                            </div>

							 <!-- doc contact -->
                            <div class="inputContainer">
                                <asp:TextBox CssClass="textBox" id="txtParentID" runat="server" ReadOnly="True" Visible ="false"></asp:TextBox>
                             
                            </div>

                            <div class="inputContainer">
                             
                                <asp:Label runat="server" AssociatedControlID="txtPhone" Text="Phone No:" ID="Label3" Font-Size="X-Large" Width="111px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtPhone" runat="server"></asp:TextBox>
                             
                            </div>

                            <div class="inputContainer">
                             
                                <asp:Label runat="server" AssociatedControlID="txtSubID" Text="Suburb Code:" ID="Label1" Font-Size="X-Large" Width="113px"></asp:Label>
                                <asp:TextBox CssClass="textBox" id="txtSubID" runat="server" ></asp:TextBox>
                             
                            </div>

                            <div class="inputContainer">
                             
                            <asp:Label ID="lblUpdateSuccess" runat="server" AssociatedControlID="btnUpdate" Text=" Status :" Height="25px" Width="428px" Font-Size="X-Large"></asp:Label>
                            </div>
                        </div>

                        <!-- Navigation Buttons -->
                        <div>
                            <asp:Button ID="btnUpdate" CssClass="mainButton" runat="server" Text="Update Details" OnClick="btnUpdate_Click" />
                            
                        </div>
                    </fieldset>

							 <!-- id -->
                           
                            <!-- First Name -->

							<!-- Surname -->
							
							 <!-- phone -->
							 <!-- email -->
         
                             
                          
							
                        </div>


                        <!-- Update Button -->
                        <div style="margin-left: 80px">
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
