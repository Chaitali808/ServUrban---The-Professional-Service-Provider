<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "com.r3sys.model.ServiceProvider" %>
<%@ page import = "java.util.List" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="en">
<head>
    
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
      <link rel="stylesheet" type="text/css" href="./resources/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- waves.css -->
      <link rel="stylesheet" href="./resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
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
                                   <a href="#!" onclick="javascript:toggleFullScreen()" class="waves-effect waves-light">
                                  <i class="ti-fullscreen"></i>
                              </a>
                              </div>
                          </li>
                          <li>
                             
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
                                      <span id="more-details">Chaitali Bhavsar<i class="fa fa-caret-down"></i></span>
                                  </div>
                              </div>
        
                              <div class="main-menu-content">
                                  <ul>
                                      <li class="more-details">
                                          
                                          <a href="adminLogin"><i class="ti-layout-sidebar-left"></i>Logout</a>
                                      </li>
                                  </ul>
                              </div>
                          </div>
                          <div class="p-15 p-b-0">

                          </div>
                          <div class="pcoded-navigation-label" data-i18n="nav.category.navigation"></div>
                          <ul class="pcoded-item pcoded-left-item">
                              <li class="active">
                                  <a href="adminDashboard" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-home"></i><b>D</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.dash.main">Dashboard</span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                           
                             
                          <ul class="pcoded-item pcoded-left-item">
                              <li>
                                  <a href="pendingServiceProviders" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.form-components.main">Pending Service Providers   </span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>
                          
                       <!--   <ul class="pcoded-item pcoded-left-item">
                              <li>
                                  <a href="approvedServiceProviders" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.form-components.main">Approved Providers  </span>
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>
        	
                          <ul class="pcoded-item pcoded-left-item">
                              <li>
                                  <a href="disapprovedServiceProviders" class="waves-effect waves-dark">
                                      <span class="pcoded-micon"><i class="ti-layers"></i><b>FC</b></span>
                                      <span class="pcoded-mtext" data-i18n="nav.form-components.main">Disapproved Providers   </span>
                                      
                                      <span class="pcoded-mcaret"></span>
                                  </a>
                              </li>
                          </ul>    --> 
                  
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
                                      <ul class="breadcrumb-title">
                                          
                                          <li class="breadcrumb-item"><a href="adminDashboard">Dashboard</a>
                                          </li>
                                      </ul>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <!-- Page-header end -->
                      
                      
                        <div class="pcoded-inner-content">
                        <!-- Main-body start -->
                        <div class="main-body">
                            <div class="page-wrapper">
                                <!-- Page-body start -->
                                <div class="page-body">
                                    <!-- Basic table card start -->
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>All Service Providers</h5>
                                            <div class="card-header-right">
                                                <ul class="list-unstyled card-option">
                                                    <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                    <li><i class="fa fa-window-maximize full-card"></i></li>
                                                    <li><i class="fa fa-minus minimize-card"></i></li>
                                                    <li><i class="fa fa-refresh reload-card"></i></li>
                                                    <li><i class="fa fa-trash close-card"></i></li>
                                                </ul>
                                            </div>
                                        </div>
             
                                        <div class="card-block table-border-style">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead style="background-color: #007BFF; color: #fff;">
                                                        <tr>
                                                            <th>#</th>
                                                            <th>spContact</th>
                                                            <th>spName</th>
                                                            <th>spAge</th>
                                                            <th>spAddress</th>
                                                            <th>spPincode</th>
                                                            <th>spArea</th>
                                                        <!-- <th>spLatitude</th>
                                                            <th>spLongitude</th>    -->   
                                                            <th>spEmail</th>
                                                            
                                                            <th>spCategory</th>
                                                            <th>serviceType</th>
                                                            <th>openTime</th>
                                                            <th>closeTime</th>
                                                            <th>spStatus</th>
                                                            <th>Approve</th>
                                                            <th>Disapprove</th>
                                                            
                                       					 </tr>
                                                    </thead>
                                                    <tbody>
               <%  List<ServiceProvider> serviceProvider = (List<ServiceProvider>)request.getAttribute("serviceProvider");
              		for(ServiceProvider sp : serviceProvider){
              %>
                                                        <tr>
                                                            <th scope="row">1</th>
                                                            <td><%= sp.getSpContact() %></td>
                                                            <td><%= sp.getSpName() %></td>
                                                            <td><%= sp.getSpAge() %></td>
                                                            <td><%= sp.getSpAddress()%></td>
                                                            <td><%= sp.getSpPincode()%></td>
                                                            <td><%= sp.getSpArea() %></td>
                                                         <!-- <td><%= sp.getSpLatitude() %></td>   --> 
                                                         <!-- <td><%= sp.getSpLongitude() %></td>  --> 
                                                            <td><%= sp.getSpEmail() %></td>
                                                        <!--    <td><%= sp.getSpPassword() %></td>  --> 
                                                            <td><%= sp.getSpCategory() %></td>
                                                            <td><%= sp.getServiceType() %></td>
                                                            <td><%= sp.getOpenTime() %></td>
                                                            <td><%= sp.getCloseTime() %></td>
                                                            <td><%= sp.getSpStatus() %></td>
															<td style="border: 1px solid #ddd;">
												            <a href="approved/<%= sp.getSpContact() %>">
												             <button type="submit" class="btn btn-success">Approve</button>
												            </a>
												        </td>
												        <td style="border: 1px solid #ddd;">
												            <a href="disapproved/<%= sp.getSpContact() %>">
												                <button type="submit" class="btn btn-danger">Disapprove</button>
												            </a> 
												        </td>
												       </tr>
                                                   <% } %>      
                                                    </tbody>
                                                </table>
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Basic table card end -->
                        </div>
                    </div>
                </div>
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
