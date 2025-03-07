<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import = "com.r3sys.model.ServiceProvider" %>
  <%@ page import = "com.r3sys.model.User" %>
<%@ page import = "java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
    <title>ServUrban</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="description" content="Mega Able Bootstrap admin template made using Bootstrap 4 and it has huge amount of ready made feature, UI components, pages which completely fulfills any dashboard needs." />
      <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="codedthemes" />
      <!-- Favicon icon -->
      <link rel="icon" href="./resources/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="./resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
      <!-- themify icon -->
      <link rel="stylesheet" type="text/css" href="./resources/assets/icon/themify-icons/themify-icons.css">
      <!-- Font Awesome -->
      <link rel="stylesheet" type="text/css" href="./resources/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- scrollbar.css -->
      <link rel="stylesheet" type="text/css" href="./resources/assets/css/jquery.mCustomScrollbar.css">
        <!-- am chart export.css -->
        <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="./resources/assets/css/style.css">
  </head>

  <body>
  <!-- Pre-loader start -->
  
  <!-- Pre-loader end -->
  <div id="pcoded" class="pcoded">
      <div class="pcoded-overlay-box"></div>
      <div class="pcoded-container navbar-wrapper">
          <nav class="navbar header-navbar pcoded-header">
              <div class="navbar-wrapper">
                  <div class="navbar-logo">
                      <a class="mobile-menu waves-effect waves-light" id="mobile-collapse" href="#!">
                          <i class="ti-menu"></i>
                      </a>
                      <div class="mobile-search waves-effect waves-light">
                          <div class="header-search">
                              <div class="main-search morphsearch-search">
                                  <div class="input-group">
                                      <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                      <input type="text" class="form-control" placeholder="Enter Keyword">
                                      <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <a href="index.html">
                          <img class="img-fluid" src="./resources/assets/images/logo.png" alt="Theme-Logo" />
                      </a>
                      <a class="mobile-options waves-effect waves-light">
                          <i class="ti-more"></i>
                      </a>
                  </div>
                  <div class="navbar-container container-fluid">
                      <ul class="nav-left">
                          <li>
                              <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                          </li>
                          <li class="header-search">
                              <div class="main-search morphsearch-search">
                                  <div class="input-group">
                                      <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                      <input type="text" class="form-control">
                                      <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                  </div>
                              </div>
                          </li>
                          <li>
                              <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                  <i class="ti-fullscreen"></i>
                              </a>
                          </li>
                      </ul>
                      <ul class="nav-right">
                          <li class="header-notification">
                              <a href="#!" class="waves-effect waves-light">
                                  <i class="ti-bell"></i>
                                  <span class="badge bg-c-red"></span>
                              </a>
                              <ul class="show-notification">
                                  <li>
                                      <h6>Notifications</h6>
                                      <label class="label label-danger">New</label>
                                  </li>
                                  <li class="waves-effect waves-light">
                                      <div class="media">
                                          <img class="d-flex align-self-center img-radius" src="./resources/assets/images/avatar-2.jpg" alt="Generic placeholder image">
                                          <div class="media-body">
                                              <h5 class="notification-user">John Doe</h5>
                                              <p class="notification-msg">Lorem ipsum dolor sit amet, consectetuer elit.</p>
                                              <span class="notification-time">30 minutes ago</span>
                                          </div>
                                      </div>
                                  </li>
                              </ul>
                          </li>
                          <li class="user-profile header-notification">
                              <a href="#!" class="waves-effect waves-light">
                                  <img src="./resources/assets/images/avatar-4.jpg" class="img-radius" alt="User-Profile-Image">
                                  <span>John Doe</span>
                                  <i class="ti-angle-down"></i>
                              </a>
                              <ul class="show-notification profile-notification">

                                  <li class="waves-effect waves-light">
                                      <a href="#">
                                          <i class="ti-layout-sidebar-left"></i> Logout
                                      </a>
                                  </li>
                              </ul>
                        </div>
                    </div>
                </nav>

          <div class="pcoded-main-container">
              <div class="pcoded-wrapper">
                  <nav class="pcoded-navbar">
                      <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
                      <div class="pcoded-inner-navbar main-menu">
                          <div class="">
                              <div class="main-menu-header">
                                  <img class="img-80 img-radius" src="./resources/assets/images/avatar-4.jpg" alt="User-Profile-Image">
                                  <div class="user-details">
                                      <span id="more-details">John Doe<i class="fa fa-caret-down"></i></span>
                                  </div>
                              </div>
        
                              <div class="main-menu-content">
                                  <ul>
                                      <li class="more-details">
                                          <a href="#"><i class="ti-user"></i>View Profile</a>
                                          <a href="#"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                          <div class="p-15 p-b-0">
                              <form class="form-material">
                                  <div class="form-group form-primary">
                                      <input type="text" name="footer-email" class="form-control" required="">
                                      <span class="form-bar"></span>
                                      <label class="float-label"><i class="fa fa-search m-r-10"></i>Search Service</label>
                                  </div>
                              </form>
                          </div>
                          <div class="pcoded-navigation-label" data-i18n="nav.category.navigation">Layout</div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="active">
                                  <a href="userDashboard" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.dash.main">Dashboard</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                           
                             <div class="pcoded-navigation-label" data-i18n="nav.category.other"> Book Services</div>
                            <ul class="pcoded-item pcoded-left-item">
                                <li class="pcoded-hasmenu ">
                                    <a href="viewAllCategories" class="waves-effect waves-dark">
                                        <span class="pcoded-micon"><i class="ti-direction-alt"></i><b>M</b></span>
                                        <span class="pcoded-mtext" data-i18n="nav.menu-levels.main">Select Category</span>
                                        <span class="pcoded-mcaret"></span>
                                    </a>
                                    
                              </li>
                          </ul>
                          
                          <div class="pcoded-navigation-label" data-i18n="nav.category.forms">Pendings</div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li>
                                  <a href="uPendingOrders" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.form-components.main">Pending Orders</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>
                          
                          <div class="pcoded-navigation-label" data-i18n="nav.category.forms">Approved</div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li>
                                  <a href="uApprovedOrders" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.form-components.main">Approved Orders</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>
        	
                          <div class="pcoded-navigation-label" data-i18n="nav.category.other">Disapproved</div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="pcoded-hasmenu ">
                                  <a href="uDisapprovedOrders" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-direction-alt"></i><b>M</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.menu-levels.main">Disapproved Orders</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>
                      </div>
                  </nav>
                  <div class="pcoded-content">
                      <!-- Page-header start -->

                      <div class="page-header">
                          <div class="page-block">
                              <div class="row align-items-center">
                                  <div class="col-md-8">
                                      <div class="page-header-title">
                                          <h5 class="m-b-10">Dashboard</h5>
                                          <p class="m-b-0">Welcome to Professional Service App</p>
                                      </div>
                                  </div>
                                  <div class="col-md-4">
                                      
                                  </div>
                              </div>
                          </div>
                      </div>
                       <!-- Page-header start -->

                        
                        <!-- Page-header end -->

                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <!-- Basic Form ================================================Inputs card start -->
                            <div class="card">
                                <div class="card-header">
                                    <h5>Book Order Here</h5>
                    
        <%
					User user = (User)request.getAttribute("user");
					ServiceProvider serviceProvider = (ServiceProvider)request.getAttribute("serviceProvider");
					
					String uName=user.getuName();
					String uContact=user.getuContact();
					String uEmail=user.getuEmail();
					String spName=serviceProvider.getSpName();
					String spContact=serviceProvider.getSpContact();
					
					System.out.println(uName);
					System.out.println(uContact);
					System.out.println(uEmail);
					System.out.println(spName);
					System.out.println(spContact);
				%>            
                                </div>
                                <div class="card-block">
                                    <h4 class="sub-title">Basic Inputs</h4>
                    <form action ="afterBookOrder" method ="get">
										
					<div class="form-group row">
                        <label class="col-sm-2 col-form-label">OrderId</label>
                             <div class="col-sm-10">
                            	 <input type="hidden"  value ="uId" name ="uId" class="form-control" required>
                             </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">User Name</label>
                                            <div class="col-sm-10">
                                                <input type="hidden"  name = "uName" class="form-control" 
                                                    placeholder="<%= uName %>" readonly required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label"> User Contact</label>
                                            <div class="col-sm-10">
                                                <input type="hidden"  name = "uContact"class="form-control" placeholder="<%= uContact %>" required readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label"> User Email</label>
                                            <div class="col-sm-10">
                                                <input type="hidden" name ="uEmail"class="form-control" placeholder="<%= uEmail%>" required readonly>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">service Provider Name</label>
                                            <div class="col-sm-10">
                                                <input type="hidden" name ="spName"class="form-control" placeholder=" <%= spName%>" required readonly>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Service Provider Contact</label>
                                            <div class="col-sm-10">
                                                <input type="hidden" name ="spContact"class="form-control" placeholder=" <%= spContact%>" required readonly>
                                            </div>
                                        </div>
                                       
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">OrderDate</label>
                                            <div class="col-sm-10">
                                                <input type="date"  name ="OrderDdate" value ="OrderDdate"class="form-control" required>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">OrderTime</label>
                                            <div class="col-sm-10">
                                                <input type="time"  name ="OrderTime" value ="OrderTime" class="form-control" required>
                                            </div>
                                        </div>
                                        
										 <div class="form-group row">
                                            <label class="col-sm-2 col-form-label">ServiceTitle</label>
                                            <div class="col-sm-10">
                                                <input type="text"  name ="serviceTitle" class="form-control" required>
                                            </div>
                                        </div>
										
										<div class="form-group row">
                                            <label class="col-sm-2 col-form-label">Order Status</label>
                                            <div class="col-sm-10">
                                                <input type="hidden" name ="OrderStatus" value ="Pending"class="form-control" placeholder="Pending" readonly required>
                                            </div>
                                        </div>
                                        
                                        
										<button type="submit" class="btn btn-success">place Order</button>
										
                                    </form>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <!-- Basic Form Inputs card end -->
                        </div>
                    </div>
                </div>
            
        
    <!-- Warning Section Starts -->
   
    <!-- Warning Section Ends -->
    
    <!-- Required Jquery -->
    <script type="text/javascript" src="./resources/assets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="./resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="./resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <script type="text/javascript" src="./resources/assets/pages/widget/excanvas.js "></script>
    <!-- waves js -->
    <script src="./resources/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="./resources/assets/js/jquery-slimscroll/jquery.slimscroll.js "></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="./resources/assets/js/modernizr/modernizr.js "></script>
    <!-- slimscroll js -->
    <script type="text/javascript" src="./resources/assets/js/SmoothScroll.js"></script>
    <script src="./resources/assets/js/jquery.mCustomScrollbar.concat.min.js "></script>
    <!-- Chart js -->
    <script type="text/javascript" src="./resources/assets/js/chart.js/Chart.js"></script>
    <!-- amchart js -->
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="./resources/assets/pages/widget/amchart/gauge.js"></script>
    <script src="./resources/assets/pages/widget/amchart/serial.js"></script>
    <script src="./resources/assets/pages/widget/amchart/light.js"></script>
    <script src="./resources/assets/pages/widget/amchart/pie.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <!-- menu js -->
    <script src="./resources/assets/js/pcoded.min.js"></script>
    <script src="./resources/assets/js/vertical-layout.min.js "></script>
    <!-- custom js -->
    <script type="text/javascript" src="./resources/assets/pages/dashboard/custom-dashboard.js"></script>
    <script type="text/javascript" src="./resources/assets/js/script.js "></script>
</body>

</html>




