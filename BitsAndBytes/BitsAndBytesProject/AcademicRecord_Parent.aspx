<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AcademicRecord_Parent.aspx.cs" Inherits="BitsAndBytes.AcademicRecord_Parent" %>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Academic Record</title>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">

	<!-- Font Awesome JS -->
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
	<script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>
</head>
<body>
    <form id="frmEditMechanic" runat="server">
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
				<h1 Cssclass="h1"> 
						
                       	<img alt="a" class="auto-style2" height="85" src="images/bbimages/academic.png" width="125" />               
					
                       
				
				</h1>
				<h2 Cssclass="h1">
					<a> Academic Record </a>
						
					
						

				</h2>
				

				<!-- Page Body -->

				<div id="regForm">
					<!-- Search Bar -->
					  <!-- Parent Details -->
                    <fieldset id="fsContact" runat="server">
                        <h2 class="fsTitle">View Marks By:</h2>
                        <div>
                            <!-- First Name -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="cmbSelectStudent" Text="Select Child:" Width="235px"></asp:Label>
                                    <span>
                            <asp:DropDownList ID="cmbSelectStudent" CssClass="textBox" runat="server" OnSelectedIndexChanged="cmbSelectStudent_SelectedIndexChanged" AutoPostBack="True" Width="150px" DataSourceID="DSStudents" DataTextField="firstName" DataValueField="firstName">
                                <asp:ListItem Value="1">Select Student</asp:ListItem>
                            </asp:DropDownList>
                           
							</span>
                           </div>
                                
                                <div class="inputContainer">
                                    
                           
                               <asp:Label runat="server" AssociatedControlID="cmbSelectOption" Text="View By:" ID="Label1" Width="235px"></asp:Label>

                                <asp:DropDownList ID="cmbSelectOption" CssClass="textBox" runat="server" OnSelectedIndexChanged="cmbSelectOption_SelectedIndexChanged" AutoPostBack="True">
                                    <asp:ListItem>Select Option...</asp:ListItem>
                                    <asp:ListItem >View All</asp:ListItem>
                                    <asp:ListItem>View Semester 1</asp:ListItem>
                                    <asp:ListItem>View Semester 2</asp:ListItem>
                                    <asp:ListItem>Search By Subject</asp:ListItem>
                                </asp:DropDownList>
                            
							
                           
                                
                            </div>
                                
                            

							 <!-- Contact Name -->
                            <div class="inputContainer">
                                <asp:Label runat="server" AssociatedControlID="cmbSubject" Text="Select Subject:" ID="lblsearchsubj" Width="235px"></asp:Label>
                            <span>
                           
						<asp:DropDownList ID="cmbSubject" CssClass="textBox" runat="server" OnSelectedIndexChanged="cmbSubject_SelectedIndexChanged" AutoPostBack="True" Width="150px" DataSourceID="DSSubjects" DataTextField="topic" DataValueField="topic">
                                <asp:ListItem Value="1">Select Subject</asp:ListItem>
                            </asp:DropDownList>
                            
							</span>
                                
                            </div>

							<div class="inputContainer">


                            <asp:Button ID="btnPDF" CssClass="mainButton" runat="server" Text="Save as PDF" OnClick="btnPDF_Click" />


							</div>
                        </div>

                        <!-- Navigation Buttons -->
                    </fieldset>

					<div>
                        <div style="height: 64px">
                            <span><a></a><asp:Label ID="lblStudent" runat="server" CssClass="label" ></asp:Label>
                            
							</span>
                            <asp:SqlDataSource ID="DSStudents" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT [firstName] FROM [tblPupil] WHERE ([parentID] = @parentID)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblParent" Name="parentID" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                           
         <asp:Label ID="lblParent" runat="server" CssClass="label" ></asp:Label>
                           
                            <asp:SqlDataSource ID="DSSubjects" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT [topic] FROM [tblActivity]"></asp:SqlDataSource>
                           
         <asp:Label ID="lblActive" runat="server" CssClass="label" ></asp:Label>
                        </div>
					</div>
               
                    </div>
                    <div>
                        <asp:GridView ID="dgvAllMarks" AlternatingRowStyle-CssClass="gridAltRow" RowStyle-CssClass="gridRow" HeaderStyle-CssClass="gridHeader" CssClass="gridSearchTable" runat="server" Width="80%" AutoGenerateColumns="False" DataSourceID="DSMarks">
<AlternatingRowStyle CssClass="gridAltRow"></AlternatingRowStyle>

                            <Columns>
                                <asp:BoundField DataField="comment" HeaderText="Teacher Remark" SortExpression="comment" />
                                <asp:BoundField DataField="percentage" HeaderText="Percent" SortExpression="percentage" />
                                <asp:BoundField DataField="result" HeaderText="Result" SortExpression="result" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                            </Columns>

<HeaderStyle CssClass="gridHeader"></HeaderStyle>

<RowStyle CssClass="gridRow"></RowStyle>
                        </asp:GridView>               
                        <asp:SqlDataSource ID="DSMarks" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT [comment], [percentage], [result], [date] FROM [tblMarks] WHERE ([pupilID] = @pupilID)" OnSelecting="DSMarks_Selecting">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblStudent" Name="pupilID" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <asp:GridView ID="dgvSem1" AlternatingRowStyle-CssClass="gridAltRow" RowStyle-CssClass="gridRow" HeaderStyle-CssClass="gridHeader" CssClass="gridSearchTable" runat="server" Width="80%" AutoGenerateColumns="False" DataSourceID="DsSem1">
<AlternatingRowStyle CssClass="gridAltRow"></AlternatingRowStyle>

                            <Columns>
                                <asp:BoundField DataField="comment" HeaderText="Teacher Remark" SortExpression="comment" />
                                <asp:BoundField DataField="percentage" HeaderText="Percentage" SortExpression="percentage" />
                                <asp:BoundField DataField="result" HeaderText="Result" SortExpression="result" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                            </Columns>

<HeaderStyle CssClass="gridHeader"></HeaderStyle>

<RowStyle CssClass="gridRow"></RowStyle>
                        </asp:GridView>               
                        <asp:SqlDataSource ID="DsSem1" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT comment, percentage, result, date FROM [tblMarks]  
WHERE date BETWEEN '2021-01-01' AND '2021-06-30'
AND  ([pupilID] = @pupilID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblStudent" Name="pupilID" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="dgvSem2" AlternatingRowStyle-CssClass="gridAltRow" RowStyle-CssClass="gridRow" HeaderStyle-CssClass="gridHeader" CssClass="gridSearchTable" runat="server" Width="80%" AutoGenerateColumns="False" DataSourceID="DSSem2">
<AlternatingRowStyle CssClass="gridAltRow"></AlternatingRowStyle>

                            <Columns>
                                <asp:BoundField DataField="comment" HeaderText="Teacher Remark" SortExpression="comment" />
                                <asp:BoundField DataField="percentage" HeaderText="Percentage" SortExpression="percentage" />
                                <asp:BoundField DataField="result" HeaderText="Result" SortExpression="result" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                            </Columns>

<HeaderStyle CssClass="gridHeader"></HeaderStyle>

<RowStyle CssClass="gridRow"></RowStyle>
                        </asp:GridView>               
                        <asp:GridView ID="dgvSubject" AlternatingRowStyle-CssClass="gridAltRow" RowStyle-CssClass="gridRow" HeaderStyle-CssClass="gridHeader" CssClass="gridSearchTable" runat="server" Width="80%" AutoGenerateColumns="False" DataSourceID="DSChosenSubject">
<AlternatingRowStyle CssClass="gridAltRow"></AlternatingRowStyle>

                            <Columns>
                                <asp:BoundField DataField="comment" HeaderText="Teacher Remark" SortExpression="comment" />
                                <asp:BoundField DataField="percentage" HeaderText="Percentage" SortExpression="percentage" />
                                <asp:BoundField DataField="result" HeaderText="Result" SortExpression="result" />
                                <asp:BoundField DataField="date" HeaderText="Date" SortExpression="date" />
                            </Columns>

<HeaderStyle CssClass="gridHeader"></HeaderStyle>

<RowStyle CssClass="gridRow"></RowStyle>
                        </asp:GridView>               
                        <asp:SqlDataSource ID="DSChosenSubject" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT comment, percentage, result, date FROM [tblMarks] WHERE (([actvityID] = @actvityID) AND ([pupilID] = @pupilID))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblActive" DefaultValue="" Name="actvityID" PropertyName="Text" Type="Int32" />
                                <asp:ControlParameter ControlID="lblStudent" DefaultValue="" Name="pupilID" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource ID="DSSem2" runat="server" ConnectionString="<%$ ConnectionStrings:BitesandbytesConnectionString %>" SelectCommand="SELECT comment, percentage, result, date FROM [tblMarks]
WHERE date BETWEEN '2021-07-01' AND '2021-12-30'
AND  ([pupilID] = @pupilID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblStudent" Name="pupilID" PropertyName="Text" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="dgvAllMarkPrint" AlternatingRowStyle-CssClass="gridAltRow" RowStyle-CssClass="gridRow" HeaderStyle-CssClass="gridHeader" CssClass="gridSearchTable" runat="server" Width="80%" AutoGenerateColumns="False" Visible="False">
<AlternatingRowStyle CssClass="gridAltRow"></AlternatingRowStyle>

<HeaderStyle CssClass="gridHeader"></HeaderStyle>

<RowStyle CssClass="gridRow"></RowStyle>
                        </asp:GridView>               
                        <br />
                    </div>

					<div class="footer">
                <asp:Label ID="lblLoggedInAs" runat="server" Text="Logged in user: Jackie Jonas "></asp:Label>
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

