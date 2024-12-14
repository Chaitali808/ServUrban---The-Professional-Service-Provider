<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.r3sys.model.ServiceProvider" %>
<%@ page import="com.r3sys.model.User" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
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
    <!-- Required Framework -->
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
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">

    <style>
    /* ===== Google Font Import - Poppins ===== */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap');
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }
    body{
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
        background: #4070f4;
    }
    .container{
        position: relative;
        max-width: 900px;
        width: 100%;
        border-radius: 6px;
        padding: 30px;
        margin: 0 15px;
        background-color: #fff;
        box-shadow: 0 5px 10px rgba(0,0,0,0.1);
    }
    .container header{
        position: relative;
        font-size: 20px;
        font-weight: 600;
        color: #333;
    }
    .container header::before{
        content: "";
        position: absolute;
        left: 0;
        bottom: -2px;
        height: 3px;
        width: 27px;
        border-radius: 8px;
        background-color: #4070f4;
    }
    .container form{
        position: relative;
        margin-top: 16px;
        min-height: 490px;
        background-color: #fff;
        overflow: hidden;
    }
    .container form .form{
        position: absolute;
        background-color: #fff;
        transition: 0.3s ease;
    }
    .container form .form.second{
        opacity: 0;
        pointer-events: none;
        transform: translateX(100%);
    }
    form.secActive .form.second{
        opacity: 1;
        pointer-events: auto;
        transform: translateX(0);
    }
    form.secActive .form.first{
        opacity: 0;
        pointer-events: none;
        transform: translateX(-100%);
    }
    .container form .title{
        display: block;
        margin-bottom: 8px;
        font-size: 16px;
        font-weight: 500;
        margin: 6px 0;
        color: #333;
    }
    .container form .fields{
        display: flex;
        align-items: center;
        justify-content: space-between;
        flex-wrap: wrap;
    }
    form .fields .input-field{
        display: flex;
        width: calc(100% / 3 - 15px);
        flex-direction: column;
        margin: 4px 0;
    }
    .input-field label{
        font-size: 12px;
        font-weight: 500;
        color: #2e2e2e;
    }
    .input-field input, select{
        outline: none;
        font-size: 14px;
        font-weight: 400;
        color: #333;
        border-radius: 5px;
        border: 1px solid #aaa;
        padding: 0 15px;
        height: 42px;
        margin: 8px 0;
    }
    .input-field input:focus,
    .input-field select:focus{
        box-shadow: 0 3px 6px rgba(0,0,0,0.13);
    }
    .input-field select,
    .input-field input[type="date"]{
        color: #707070;
    }
    .input-field input[type="date"]:valid{
        color: #333;
    }
    .container form button, .backBtn{
        display: flex;
        align-items: center;
        justify-content: center;
        height: 45px;
        max-width: 200px;
        width: 100%;
        border: none;
        outline: none;
        color: #fff;
        border-radius: 5px;
        margin: 25px 0;
        background-color: #4070f4;
        transition: all 0.3s linear;
        cursor: pointer;
    }
    .container form .btnText{
        font-size: 14px;
        font-weight: 400;
    }
    form button:hover{
        background-color: #265df2;
    }
    form button i,
    form .backBtn i{
        margin: 0 6px;
    }
    form .backBtn i{
        transform: rotate(180deg);
    }
    form .buttons{
        display: flex;
        align-items: center;
    }
    form .buttons button, .backBtn{
        margin-right: 14px;
    }

    @media (max-width: 750px) {
        .container form{
            overflow-y: scroll;
        }
        .container form::-webkit-scrollbar{
           display: none;
        }
        form .fields .input-field{
            width: calc(100% / 2 - 15px);
        }
    }

    @media (max-width: 550px) {
        form .fields .input-field{
            width: 100%;
        }
    }
    </style>
</head>
<body>
    <div class="container">
        <header>Book Service</header>
        <%
            User user = (User) request.getAttribute("user");
            ServiceProvider serviceProvider = (ServiceProvider) request.getAttribute("serviceProvider");
            
            if (user != null && serviceProvider != null) {
                String uName = user.getuName();
                String uContact = user.getuContact();
                String uEmail = user.getuEmail();
                String spName = serviceProvider.getSpName();
                String spContact = serviceProvider.getSpContact();
        %>
        
        <form action="afterBookOrder" method="get">
            <div class="form-first">
                    <span class="title">Order Details</span>
                    <div class="fields">
                    
                    	<div class="fields">
                        <div class="input-field">
                            <label>Order Id</label>
                            <input type="text" placeholder="Enter Order Id" name ="uId" required>
                        </div>

                        <div class="input-field">
                            <label>Username</label>
                            <input type="text" name = "uName" placeholder="<%= uName %>" value="<%= uName %>"readonly required>
                        </div>

                        <div class="input-field">
                            <label>User Contact</label>
                            <input type="text" name = "uContact" placeholder="<%= uContact %>" value="<%= uContact %>" readonly required>
                        </div>

                        <div class="input-field">
                            <label>User Email</label>
                            <input type="text" name ="uEmail" placeholder="<%= uEmail%>" value="<%= uEmail%>" required readonly>
                        </div>
                        
                        <div class="input-field">
                            <label>Service Provider Name</label>
                            <input type="text" name ="spName" placeholder=" <%= spName%>" value=" <%= spName%>"required readonly>
                        </div> 

                        <div class="input-field">
                            <label>Service Provider Contact</label>
                            <input type="text" name ="spContact" placeholder=" <%= spContact%>"value="<%= spContact%>" required readonly>
                        </div>
                        
                        <div class="input-field">
                            <label>Order Date</label>
                            <input type="date" name ="OrderDdate" value ="OrderDdate" required>
                        </div> 
                        
                        <div class="input-field">
                            <label>Order Time</label>
                            <input type="time"  name ="OrderTime" value ="OrderTime" required>                       
                        </div>

                        <div class="input-field">
                            <label>Service Title</label>
                            <input type="text" name ="serviceTitle" required>
                        </div>

                        <div class="input-field">
                            <label>Order Status</label>
                            <input type="text" name ="OrderStatus" value ="Pending" placeholder="Pending" readonly required>
                        </div>
                        
                    </div>
                    <div class="buttons">
                     <button class="sumbit">
                            <span class="btnText">Submit</span>
                            <i class="uil uil-navigator"></i>
                        </button>
                     </div>   
                  </div>
                 </div>
               </form>
            </div>
            
          <% } else { %>
            <p>User or Service Provider details are missing. Please try again.</p>
        <% } %>
        

    <!-- Required Framework -->
    <script type="text/javascript" src="./resources/assets/book.js"></script>
    <script type="text/javascript" src="./resources/assets/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="./resources/assets/js/bootstrap/js/bootstrap.min.js"></script>
    <!-- waves.js -->
    <script src="./resources/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="./resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- modernizr js -->
    <script type="text/javascript" src="./resources/assets/js/SmoothScroll.js"></script>
    <script src="./resources/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Chart js -->
    <script type="text/javascript" src="./resources/assets/js/chart.js/Chart.js"></script>
    <!-- amchart js -->
    <script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
    <script src="https://www.amcharts.com/lib/3/serial.js"></script>
    <script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
    <script src="https://www.amcharts.com/lib/3/themes/light.js"></script>
    <!-- Custom js -->
    <script src="./resources/assets/js/pcoded.min.js"></script>
    <script src="./resources/assets/js/vertical-layout.min.js"></script>
    <script type="text/javascript" src="./resources/assets/js/script.js"></script>
</body>
</html>
