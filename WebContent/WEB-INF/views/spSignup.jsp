<%@ page import ="com.r3sys.model.ServiceProvider" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

  <body themebg-pattern="theme1" style="background-image: url('./resources/assets/images/widget/blueLoginBg.avif'); background-size: cover; 
  background-position: center center;
   background-attachment: fixed;">
    <!-- Pre-loader start -->
  <div class="theme-loader">
      <div class="loader-track">
          <div class="preloader-wrapper">
              <div class="spinner-layer spinner-blue">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
              <div class="spinner-layer spinner-red">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
            
              <div class="spinner-layer spinner-yellow">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
            
              <div class="spinner-layer spinner-green">
                  <div class="circle-clipper left">
                      <div class="circle"></div>
                  </div>
                  <div class="gap-patch">
                      <div class="circle"></div>
                  </div>
                  <div class="circle-clipper right">
                      <div class="circle"></div>
                  </div>
              </div>
          </div>
      </div>
  </div>
  <!-- Pre-loader end -->

    <section class="login-block">
        <!-- Container-fluid starts -->
        <div class="container-fluid">
    <div class="row">
        <div class="col-sm-12">
                    <!-- Authentication card start -->
                    
       <!-- ================================================================================================================ -->
       	<% 
       		String spLatitude =(String) request.getAttribute("spLatitude");
       		String spLongitude =(String) request.getAttribute("spLongitude");
       		
       	%>
               <form class="md-float-material form-material" action ="afterSpSignup" method="post">
                            <div class="text-center">
                                <img src="./resources/assets/images/logo.png" alt="logo.png">
                            </div>
							<div class="auth-box card" style="max-width: 800px; margin: auto;">     
                           <div class="card-block">
                                    <div class="row m-b-20">
                                        <div class="col-md-12">
                                            <h3 class="text-center">Register Service Provider</h3>
                                        </div>
                                    </div>
                                    
                                  <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="text" name="spName" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Service Provider Name</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="tel" name="spContact" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Contact</label>
                                        </div>
                                    </div>
                                </div>
                                
                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="email" name="spEmail" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Email</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="password" name="spPassword" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Password</label>
                                        </div>
                                    </div>
                                </div>
                                
                                 <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="text" name="spAge" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Age</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="tel" name="spPincode" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Pincode</label>
                                        </div>
                                    </div>
                                </div>
                             
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="text" name="spCity" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">City</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="text" name="spArea" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Area</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-group form-primary">
                                    <input type="text" name="spAddress" class="form-control" required="">
                                    <span class="form-bar"></span>
                                    <label class="float-label">Address</label>
                                </div>
                                
                               <div class="row">
                               		<div class="col-sm-6">
                                        <div class="form-group form-primary">
                                    	<label for="country">Select Category</label>
										    <select id="spCategory" name="spCategory" class="form-control">
										       <option value="Household Services">Household Services</option>
										        <option value="Catering Services">Catering Services </option>
										        <option value="Professional Services">Professional Services</option>
										        <option value="Beauty Parlour Services">Beauty Parlour Services</option>
										        <!-- Add more options as needed -->
										    </select>
										</div>
									</div>	    
                                        <div class="form-group form-primary">
                                        	
                                            <label for="country">Select Service Type</label>
										    <select id="country" name="serviceType" class="form-control">
										       <option value="Basic Cleaning</">Basic Cleaning</option>
										        <option value="Cleaning kitchen appliances">Cleaning kitchen appliances</option>
										        <option value="Sweeping and mopping floors">Sweeping and mopping floors</option>
										        <option value="Painter Services">Painter Services</option>
										        <option value="Carpenter Services">Carpenter Services</option>
										        <option value="Plumber Services">Plumber Services</option>
										        <option value="Makeup Services">Makeup Services</option>
										        <option value="Hair Services">Hair Services</option>
										        <option value="Skincare Services">Skincare Services</option>
										        <option value="Men's Grooming Services">Men's Grooming Services</option>
										    </select>                 
										   </div>
                                    </div>
                                    
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="time" name="openTime" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Open Time</label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="time" name="closeTime" class="form-control" required="">
                                            <span class="form-bar"></span>
                                            <label class="float-label">Close Time</label>
                                        </div>
                                    </div>
                                </div>
                                
                                <!-- ================================================================================== -->
                                    <div class="row">
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="hidden" name="spLatitude" class="form-control" required="" value ="<%= spLatitude %> ">
                                            <span class="form-bar"></span>
                                            <label class="float-label"></label>
                                        </div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="form-group form-primary">
                                            <input type="hidden" name="spLongitude" class="form-control" required="" value ="<%= spLongitude %> ">
                                            <span class="form-bar"></span>
                                            <label class="float-label"></label>
                                        </div>
                                    </div>
                                </div>
                           <!-- ================================================================================== -->
                               
                               
                                    <div class="row m-t-25 text-left">
                                       <div class="col-12">
                                         <div class="checkbox-fade fade-in-primary d-">
                                             <label>
                                                 <span class="text-inverse"><a href="/ProfessionalServicesApp/" >Back to login</a></span>
                                             </label>
                                         </div>
                                     </div>
                                    </div>
                                    
                                    <div class="row m-t-30">
                                        <div class="col-md-12">
                                            <button type="submit" class="btn btn-primary btn-md btn-block waves-effect waves-light text-center m-b-20">Create Account</button>
                                        </div>
                                    </div>
                                    <div>
                                    </div>
                                  
                                    <hr/>
                                     </div>
                                </div>
                        </form>
                        <!-- end of form -->
                </div>
                <!-- end of col-sm-12 -->
            </div>
            <!-- end of row -->
        </div>
        <!-- end of container-fluid -->
    </section>
    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
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
</html>

















