<%-- 
    Document   : HRPage
    Created on : Sep 3, 2018, 12:59:23 PM
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>MTRH  | Fleet Management Portal</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">

        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect. -->
        <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">

        <link rel="stylesheet" href="dist/css/jquery-mobile.css">

        <link rel="stylesheet" href="dist/css/jquery-ui.css">

        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <!-- bootstrap datepicker -->
        <link rel="stylesheet" href="dist/css/bootstrap-datepicker.min.css">

        <link rel="stylesheet" href="dist/css/select2.min.css">

        <link rel="stylesheet" href="dist/css/bootstrap3-wysihtml5.min.css">

        <link rel="stylesheet" href="dist/css/bootrstrap-theme.min.css">
        <link rel="stylesheet" href="dist/css/bootstrapValidator.css">



        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="dist/js/sweetalerts.min.js"></script>
        <!-- Google Font -->
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

        <style>

            .badge-primary{
                background-color:#0275d8


            };

            .badge-success{
                color:#fff;
                background-color:#5cb85c;
                border-color:#4cae4c
            }

            .badge-warning{
                background-color:#f0ad4e;
            }

            .badge-danger{
                background-color:#d9534f;
            }

            #example{
                border: 2px solid red
            }

            td {
                font-family: "Trebuchet MS", Arial, Verdana;
                font-size: 14px;
                padding: 5px;
                border-bottom-width: 1px;
                border-bottom-style: solid;
                border-bottom-color: #CDC1A7;

                color: #993300;
            }

            /* face : "courier"; size ="-1" color = "#000000"*/

        </style>

        <style>

            /*
                        table {
                            border: 1px solid #ccc;
                            border-collapse: collapse;
                            margin: 0;
                            padding: 0;
                            width: 100%;
                            table-layout: fixed;
                        }
            
                        table caption {
                            font-size: 1.5em;
                            margin: .5em 0 .75em;
                        }
            
                        table tr {
                            background-color: #f8f8f8;
                            border: 1px solid #ddd;
                            padding: .35em;
                        }
            
                        table th,
                        table td {
                            padding: .625em;
                            text-align: center;
                        }
            
                        table th {
                            font-size: .85em;
                            letter-spacing: .1em;
                            text-transform: uppercase;
                        }
            
                        @media screen and (max-width: 600px) {
                            table {
                                border: 0;
                            }
            
                            table caption {
                                font-size: 1.3em;
                            }
            
                            table thead {
                                border: none;
                                clip: rect(0 0 0 0);
                                height: 1px;
                                margin: -1px;
                                overflow: hidden;
                                padding: 0;
                                position: absolute;
                                width: 1px;
                            }
            
                            table tr {
                                border-bottom: 3px solid #ddd;
                                display: block;
                                margin-bottom: .625em;
                            }
            
                            table td {
                                border-bottom: 1px solid #ddd;
                                display: block;
                                font-size: .8em;
                                text-align: right;
                            }
            
                            table td::before {
                                /*
                                * aria-label has no advantage, it won't be read inside a table
                                content: attr(aria-label);
            */
            /*        content: attr(data-label);
                    float: left;
                    font-weight: bold;
                    text-transform: uppercase;
                }

                table td:last-child {
                    border-bottom: 0;
                }}*/
        </style>

        <style>
            body {font-family: Arial, Helvetica, sans-serif;}
            * {box-sizing: border-box;}

            /* Button used to open the chat form - fixed at the bottom of the page */
            .open-button {
                background-color: #555;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                opacity: 0.8;
                position: fixed;
                bottom: 23px;
                right: 28px;
                width: 280px;
            }

            /* The popup chat - hidden by default */
            .chat-popup {
                display: none;
                position: fixed;
                bottom: 0;
                right: 15px;
                border: 3px solid #f1f1f1;
                z-index: 9;
                width:500px;

            }
            #chatheader{

                padding: 60px;
                text-align: center;
                background: #1abc9c;
                color: white;
                font-size: 30px;

            }

            /* Add styles to the form container */
            .form-container {
                max-width: 300px;
                padding: 10px;
                background-color: white;
            }

            /* Full-width textarea */
            .form-container textarea {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
                resize: none;
                min-height: 200px;
            }

            /* When the textarea gets focus, do something */
            .form-container textarea:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Set a style for the submit/send button */
            .form-container .btn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                border: none;
                cursor: pointer;
                width: 100%;
                margin-bottom:10px;
                opacity: 0.8;
            }

            /* Add a red background color to the cancel button */
            .form-container .cancel {
                background-color: red;
            }

            /* Add some hover effects to buttons */
            .form-container .btn:hover, .open-button:hover {
                opacity: 1;
            }
        </style>


    </head>
    <!--
    BODY TAG OPTIONS:
    =================
    Apply one or more of the following classes to get the
    desired effect
    |---------------------------------------------------------|
    | SKINS         | skin-blue                               |
    |               | skin-black                              |
    |               | skin-purple                             |
    |               | skin-yellow                             |
    |               | skin-red                                |
    |               | skin-green                              |
    |---------------------------------------------------------|
    |LAYOUT OPTIONS | fixed                                   |
    |               | layout-boxed                            |
    |               | layout-top-nav                          |
    |               | sidebar-collapse                        |
    |               | sidebar-mini                            |
    |---------------------------------------------------------|
    -->
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">

                <!-- Logo -->
                <a href="/mtportal/"  class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>MT</b>P</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>MTRH</b>PORTAL</span>
                </a>

                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a id="navid"  class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <!-- Menu toggle button -->
                                <a  class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="label label-success"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 0 messages</li>
                                    <li>
                                        <!-- inner menu: contains the messages -->
                                        <ul class="menu">

                                            <!-- end message -->
                                        </ul>
                                        <!-- /.menu -->
                                    </li>
                                    <li class="footer"><a >See All Messages</a></li>
                                </ul>
                            </li>
                            <!-- /.messages-menu -->

                            <!-- Notifications Menu -->
                            <li class="dropdown notifications-menu">
                                <!-- Menu toggle button -->
                                <a  class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-bell-o"></i>
                                    <span class="label label-warning"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 0 notifications</li>
                                    <li>
                                        <!-- Inner Menu: contains the notifications -->
                                        <ul class="menu">
                                            <li><!-- start notification -->
                                                <a >
                                                    <i class="fa fa-users text-aqua"></i> 0 new members joined today
                                                </a>
                                            </li>
                                            <!-- end notification -->
                                        </ul>
                                    </li>
                                    <li class="footer"><a >View all</a></li>
                                </ul>
                            </li>
                            <!-- Tasks Menu -->
                            <li class="dropdown tasks-menu">
                                <!-- Menu Toggle Button -->
                                <a  class="dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-flag-o"></i>
                                    <span class="label label-danger"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li class="header">You have 0 tasks</li>
                                    <li>
                                        <!-- Inner menu: contains the tasks -->
                                        <ul class="menu">
                                            <li><!-- Task item -->
                                                <a >
                                                    <!-- Task title and progress text -->
                                                    <h3>

                                                        <small class="pull-right">0%</small>
                                                    </h3>
                                                    <!-- The progress bar -->
                                                    <div class="progress xs">
                                                        <!-- Change the css width attribute to simulate progress -->
                                                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar"
                                                             aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
                                                            <span class="sr-only">0% Complete</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <!-- end task item -->
                                        </ul>
                                    </li>
                                    <li class="footer">
                                        <a >View all tasks</a>
                                    </li>
                                </ul>
                            </li>
                            <!-- User Account Menu -->
                            <li class="dropdown user user-menu">
                                <!-- Menu Toggle Button -->
                                <a id="userProf"  class="dropdown-toggle" data-toggle="dropdown">
                                    <!-- The user image in the navbar-->
                                    <img src="dist/img/logoutbtn.png" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span id="nameid2" class="hidden-xs"></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="dist/img/logoutbtn.png" class="img-circle" alt="User Image">

                                        <p >

                                            <small id="rankid"></small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <li class="user-body">

                                        <!-- /.row -->
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a id="changePwd" class="btn btn-default btn-flat">Change Password</a>
                                        </div>
                                        <div class="pull-right">
                                            <a id="signoutid"  class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->
                            <li>
                                <a><i class="fa fa-gears"></i></a>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">

                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">

                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/logoutbtn.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p id="nameid"></p>
                            <!-- Status -->
                            <a ><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>

                    <!-- search form (Optional) -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->

                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">HEADER</li>

                    </ul>
                    <!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        My Dashboard

                        <p id="date"></p>
                        <small id="hours"></small>
                        <small id="minutes"></small>
                        <small id="seconds"></small>
                        <small id="ampm"></small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a ><i class="fa fa-dashboard"></i> Home</a></li>
                        <li class="active">AskHR</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content container-fluid">

                    <!--------------------------
                    | Your Page Content Here |
                    -------------------------->
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span id="lvbalid" class="info-box-icon bg-aqua"><i class="ion ion-ios-calculator"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Requests Today</span>
                                    <span class="info-box-number">0<small></small></span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-red"><i class="fa fa-cab"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Active Vehicles</span>
                                    <span id ="myapplicationsid" class="info-box-number">0</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->

                        <!-- fix for small devices only -->
                        <div class="clearfix visible-sm-block"></div>

                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-green"><i class="ion ion-ios-clock"></i></span>

                                <div class="info-box-content">
                                    <span id="ctmhrs" class="info-box-text">Vehicles On Trip</span>
                                    <span class="info-box-number">0</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="info-box">
                                <span class="info-box-icon bg-yellow"><i class="ion ion-ios-analytics"></i></span>

                                <div class="info-box-content">
                                    <span class="info-box-text">Fuel Consumption Today</span>
                                    <span id="currDeptid8" class="info-box-number">-</span>
                                </div>
                                <!-- /.info-box-content -->
                            </div>
                            <!-- /.info-box -->
                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->




                    <hr>


                    <div class="box-footer clearfix">
                        <a  class="fa fa-plus btn btn-sm btn-info btn-flat pull-left " id="opentasksid">My Tasks</a>


                        <a  class="fa fa-plus btn btn-sm btn-info btn-flat pull-left " id="showlogsid">Show Previous Logs</a>






                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;   <a id="lvyrid3" class="button button-primary"></a>


                    </div>

                    <span>
                        <button id="fleetrqbtn" class="btn btn-primary">Request For Fleet</button>
                        <button id="fuelrqbtn" class="btn btn-danger" data-toggle="modal" data-target="#fuelrqsmodal">Request For Fuel</button>
                        <button id="maintenancelogbtn" class="btn btn-success">Maintenance Log</button>
                        <button id="incidencerptbtn" class="btn btn-warning">Incidence Report</button> 

                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;


                        <button class="btn btn-primary">Daily Work Ticket</button>



                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;


                        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;

                        <button id="fuelcardbtn" type="button" class="btn btn-success"  data-toggle="modal" data-target="#myCards">
                            Fuel Cards
                        </button>


                    </span>
                    <hr>
                    <!--LATEST ORDERS-->
                    <div class ="row">
                        <div class="col-md-12">


                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Transport Request Log</h3>

                                    <div class="box-tools pull-right">
                                        <button id="mytasksbtn" type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                        </button>

                                    </div>
                                </div>

                                <!-- /.box-header -->


                                <div class="box-body">
                                    <div class="table-responsive">



                                        <table id="fleetrqtbl" class="dataTable table table-striped">
                                            <thead>
                                                <tr class="text-primary">
                                                    <th>Request ID</th>
                                                    <th>Activity Type</th>
                                                    <th>Date Posted</th>
                                                    <th>Requested By</th>
                                                    <th>Status</th>
                                                    <th id="showOrder"></th>                                                  
                                                </tr>
                                            </thead>
                                            <tbody id="fleetrqtblbd">

                                            </tbody>

                                        </table>

                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.box-body -->

                                <!-- /.box-footer -->
                            </div>

                        </div>

                        <hr>

                        <div class="col-md-12">

                            <div class="box-footer clearfix">


                                <button type="button" class="btn btn-warning" id="trmgrapprid">Transport Manager Approval</button>

                                <button type="button" class="btn btn-success" id="snrapprid">Senior Manager Approval</button>

                                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;   <a id="lvyrid3" class="button button-primary"></a>
                            </div>

                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <h3 class="box-title"></h3>

                                    <div class="box-tools pull-right">
                                        <button id="myLeaveBalances" type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                                        </button>

                                    </div>
                                </div>

                                <!-- /.box-header -->


                                <div class="box-body">
                                    <div class="widget-content nopadding">
                                        <table id="pendingidtbl" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th>Request ID</th>
                                                    <th>Type</th>
                                                    <th>Particulars</th>
                                                    <th>Action</th>
                                                </tr>
                                            </thead>
                                            <tbody id="pendingidtbltbd">

                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.box-body -->

                                <!-- /.box-footer -->
                            </div>

                        </div>

                    </div>





                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Main Footer -->
            <footer class="main-footer">
                <!-- To the right -->
                <div class="pull-right hidden-xs">
                    Excellence in Health care, Training and Research
                </div>
                <!-- Default to the left -->
                <strong>Copyright &copy; 2019 <a >MTRH</a>.</strong> All rights reserved.
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li class="active"><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a  href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane active" id="control-sidebar-home-tab">
                        <h3 class="control-sidebar-heading">Recent Activity</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:;">
                                    <i class="menu-icon fa fa-birthday-cake bg-red"></i>

                                    <div class="menu-info">
                                        <h4 class="control-sidebar-subheading">Langdon's Birthday</h4>

                                        <p>Will be 23 on April 24th</p>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                        <h3 class="control-sidebar-heading">Tasks Progress</h3>
                        <ul class="control-sidebar-menu">
                            <li>
                                <a href="javascript:;">
                                    <h4 class="control-sidebar-subheading">
                                        Custom Template Design
                                        <span class="pull-right-container">
                                            <span class="label label-danger pull-right">70%</span>
                                        </span>
                                    </h4>

                                    <div class="progress progress-xxs">
                                        <div class="progress-bar progress-bar-danger" style="width: 70%"></div>
                                    </div>
                                </a>
                            </li>
                        </ul>
                        <!-- /.control-sidebar-menu -->

                    </div>
                    <!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
                    <!-- /.tab-pane -->
                    <!-- Settings tab content -->
                    <div class="tab-pane" id="control-sidebar-settings-tab">
                        <form method="post">
                            <h3 class="control-sidebar-heading">General Settings</h3>

                            <div class="form-group">
                                <label class="control-sidebar-subheading">
                                    Report panel usage
                                    <input type="checkbox" class="pull-right" checked>
                                </label>

                                <p>
                                    Some information about this general settings option
                                </p>
                            </div>
                            <!-- /.form-group -->
                        </form>
                    </div>
                    <!-- /.tab-pane -->
                </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <script src="js/jquery-1.12.4.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>

        <!-- Select2 -->
        <script src="dist/js/select2.full.min.js"></script>


        <script src="dist/js/bootstrap3-wysihtml5.all.min.js"></script>

        <script src="dist/js/bootstrapValidator.js"></script>

        <script src="dist/js/bootstrap-datepicker.min.js"></script>

        <script src="dist/js/tableHTMLExport.js"></script>

        <script src="dist/js/jspdf.min.js"></script>

        <script src="dist/js/jspdf.plugin.autotable.js"></script>


        <script src="js/CustomDash.js"></script>

        <script  src="js/timejs.js"></script>

        <script  src="js/jquery.timepicker.js"></script>

        <!-- <script  src="js/HRPage.js"></script>-->

        <script  src="js/AskHR.js"></script>


        <script  src="js/Fleet.js"></script>


        <div class="modal modal-success fade" id="myCards">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Fuel Cards</h4>
                    </div>
                    <div class="modal-body">

                        <div class="row">
                            <div class="col-md-12">
                                <!-- Custom Tabs -->
                                <div class="nav-tabs-custom">
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a  id="cardlist" href="#tab_1" data-toggle="tab">Card Balances</a></li>
                                        <li><a id="cardalloctab" href="#tab_2"  data-toggle="tab">Card Allocations</a></li>
                                        <li><a id="cardmoney" href="#tab_3" data-toggle="tab">#</a></li>
                                        <li><a id="cardnewtab" href="#newcardtab" data-toggle="tab">New Card</a></li>
                                        <li><a id="cardtranstab" href="#cardtransactions" data-toggle="tab">Card Transactions</a></li>

                                        <li class="pull-right"><a  href="#cardtransactions" class="text-muted"><i class="fa fa-gear"></i></a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab_1">
                                            <button id="nwfuelcard" class="btn btn-primary"> Add New Card</button>
                                            <div class="box-body table-responsive no-padding">
                                                <table id ="myfuelcardstbl" class="dataTable table table-hover">
                                                    <thead>
                                                    <th>Card Number</th>   

                                                    <th>Balance</th>
                                                    <th></th>
                                                    <th></th>                                
                                                    </thead>
                                                    <tbody id="myfuelcardstblbd">

                                                    </tbody>

                                                </table>



                                                <center>  <span id="gft" class="label label-danger"></span></center>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
                                        <div class="tab-pane" id="tab_2">

                                            <button class="btn btn-link"  data-toggle="tab" data-target="#cardlist">Back</button>
                                            <div class="box-body table-responsive no-padding">

                                                <div class="col-md-3 col-lg-5 col-xs-12">Vehicle Registration:
                                                    <div class="form-group">
                                                        <select id="vehfcard" class="form-control"  style="width: 100%;">
                                                            <option value="" selected="selected">-</option>                                        
                                                        </select>
                                                    </div>
                                                </div>
                                                <table id ="myallocatedcarstbl" class="dataTable table table-hover">
                                                    <thead>
                                                    <th>Vehicle Registration</th>   


                                                    <th></th>
                                                    <th></th>                                
                                                    </thead>
                                                    <tbody id="myallocatedcarstblbd">

                                                    </tbody>

                                                </table>



                                                <center>  <span id="gft" class="label label-danger"></span></center>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
                                        <div class="tab-pane" id="tab_3">
                                            <div class="row">
                                                <div class="col-lg-3 col-lg-6 col-xs-12">Card Number:<input name="cardnorecontxt" id="cardnorecontxt" type="text" class="form-control" disabled> </div>

                                                <div class="col-md-3 col-lg-6 col-xs-12">Old Card Balance:<input name="cardbalrecon1" id="cardbalrecon1" type="number" class="form-control" disabled> </div>

                                                <div class="col-md-3 col-lg-6 col-xs-12">New Card Balance:<input name="cardbalrecon2" id="cardbalrecon2" type="number" class="form-control"> </div>

                                            </div><br><br>

                                            <div class="row">
                                                <button id="reconcilecardbal" class="btn btn-danger">Reconcile Card</button>
                                            </div>
                                        </div>
                                        <!-- /.tab-pane -->
                                        <div class="tab-pane" id="newcardtab">
                                            <div class="row">

                                                <div class="col-lg-12 col-lg-5 col-xs-12">CARD TYPE:
                                                    <div class="form-group">
                                                        <select id="cardtypeselect" class="form-control"  style="width: 100%;">
                                                            <option value="" selected="selected">CREDIT CARD</option>
                                                            <option value="" selected="selected">FUEL INVOICE</option>
                                                        </select>
                                                    </div>
                                                </div><br>
                                                <div class="col-lg-3 col-lg-6 col-xs-12">Card Number:<input name="newcardnoreg" id="newcardnoreg" type="text" class="form-control" placeholder="New Card Number"> </div>



                                                <div class="col-md-3 col-lg-6 col-xs-12">Opening Card Balance:<input name="openingcardbaltext" id="openingcardbaltext" type="number" class="form-control" placeholder="Opening card amount"> </div>
                                            </div>
                                            <br>
                                            <button id="addnewcardbtn" class="btn btn-danger">Add Card</button>
                                        </div>

                                        <div class="tab-pane" id="cardtransactions">
                                            <div class="row">

                                                <div class="col-lg-12 col-lg-5 col-xs-12">CARD TRANSACTIONS
                                                    <table id ="cardtranstbl" class="dataTable table table-hover">
                                                        <thead>
                                                        <th>Narration</th>   
                                                        <th>Debit</th>
                                                        <th>Credit</th>
                                                        <th>Entered By</th>
                                                        <th>Entered On</th>
                                                        </thead>
                                                        <tbody id="cardtranstblbd">

                                                        </tbody>

                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- /.tab-content -->
                                    </div>
                                    <!-- nav-tabs-custom -->
                                </div>
                                <!-- /.col -->
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-outline">Save changes</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
        </div>
        <div class="modal modal-warning fade" id="fuelrqsmodal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Fuel Request Form</h4>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-3 col-lg-5 col-xs-12">Card Number <input id="cardnoid" type="text" class="form-control" placeholder="Enter Card Number" onfocusout="vehcard()"></div>

                            <div class="col-md-3 col-lg-6 col-xs-12">Card Balance:<input name="cardbalid" id="cardbalid" type="text" class="form-control" disabled> </div>

                            <div class="col-md-3 col-lg-5 col-xs-12">Vehicle Registration:
                                <div class="form-group">
                                    <select id="vehfuelreg" class="form-control"  style="width: 100%;">
                                        <option value="" selected="selected">-</option>                                        
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3 col-lg-6 col-xs-12">Fuel Type:<input name="fueltypeid" id="fueltypeid" type="text" class="form-control" disabled> </div>
                        </div><!---->


                        <div class="row">
                            <div class="col-md-3 col-lg-5 col-xs-12">Last Fueled On: <input id="lastfuelled" type="text" class="form-control" disabled></div>


                            <div class="col-md-3 col-lg-6 col-xs-12">Prev. Mileage:<input name="prvmileage" id="prvmileage" type="text" class="form-control" disabled> </div>

                            <div class="col-md-3 col-lg-10 col-xs-12"><button class="btn btn-link">Show Fuel Log</button> </div>
                        </div><!---->
                        <hr>
                        Place your Request here
                        <div class="row">
                            <div class="col-md-3 col-lg-5 col-xs-12">Current Mileage: <input id="currentmileageid" type="number" class="form-control" placeholder="Enter current odometer reading here"></div>




                            <div class="col-md-3 col-lg-10 col-xs-12"><button class="btn btn-link" id="fulltankbtn" onclick="getfulltank()">Full Tank?</button> </div>

                            <div class="col-md-3 col-lg-6 col-xs-12">Quantity Requested:<input name="litresid" id="litresid" type="number" class="form-control"> </div>

                            <div class="col-md-3 col-lg-6 col-xs-12">Price Per Litre(KES):<input name="amtperlitre" id="amtperlitre" type="number" class="form-control"> </div>
                        </div><!---->
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                        <button type="button" id="postfrq" class="btn btn-outline" disabled>Post Request</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="realtransportappr">
            <div class="modal-dialog modal-md">
                <div class="modal-content">
                    <div class="modal-header">
                        <h2 id="titleid"></h2>

                        <button id="closeAdmin" type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">        
                        <br>
                        <div class="widget-content nopadding">
                            Vehicle Issued:
                            <div class="form-group">
                                <select id="vehselid" class="form-control"  style="width: 100%;">
                                    <option value ="-" selected="selected">-</option>                          
                                </select>
                            </div>

                            Driver Allocated:
                            <div class="form-group">
                                <select id="drivselid" class="form-control"  style="width: 100%;">
                                    <option value ="-" selected="selected">-</option>                          
                                </select>
                            </div>



                            <hr>
                            Special Instructions:
                            <form>
                                <textarea  id="partdef" 
                                           style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;">Please keep time</textarea>
                            </form>

                        </div>
                    </div>
                    <div class="modal-footer">
                        <button id="apprvdeployid" type="button" class="btn btn-primary">Approve Request</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Exit</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->




        <script>
            function openForm() {
                document.getElementById("myForm").style.display = "block";
            }

            function closeForm() {
                document.getElementById("myForm").style.display = "none";
            }
        </script>


        <style>
            .unit{
                background: linear-gradient(#aaa, #777);
                border-radius: 15px;
                box-shadow: 0 2px 2px #444;
                color: #fff;
                font-family: "Open Sans", sans-serif;
                font-size: 5em;
                height: 100%;
                line-height: 130px;
                margin: 0 10px;
                text-align: center;
                text-shadow: 0 2px 2px #666;
                width: 23%;
            }
        </style>


        <div class="modal modal-defsult fade" id="myworkloadid">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title"></h4>
                    </div>

                    <div class="modal-body">
                        <div id="row">

                            Leave Year: <h5 id="lvyrid3"></h5>

                            <!-- /.row -->
                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="box">
                                        <div class="box-header">
                                            <h3 class="box-title">My Actions</h3>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <button id="pdf" type="button" class="btn btn-danger">Export To PDF</button>
                                            <button id="csv" type="button" class="btn btn-primary">Export To CSV</button>
                                            <div class="box-tools">
                                                <div class="input-group input-group-sm" style="width: 150px;">
                                                    <input type="text" id="searchveh" name="table_search" class="form-control pull-right" placeholder="Search">

                                                    <!-- <div class="input-group-btn">
                                                    <!--<button type="submit" id="searchveh" class="btn btn-default"><i class="fa fa-search"></i></button>-->
                                                    <!--    <input type="text" id="searchveh" name ="searchveh">
                                                    </div>-->

                                                </div>

                                            </div>
                                        </div>
                                        <!-- /.box-header -->
                                        <div class="box-body table-responsive no-padding">
                                            <table id ="activitiesTbl" class="dataTable table table-hover">
                                                <thead>
                                                <th>ID</th>
                                                <th>Approval Level</th>
                                                <th>Name</th>
                                                <th>Leave Type</th>
                                                <th>Action Taken</th>
                                                <th> </th>
                                                </thead>
                                                <tbody id="activitiesTblbd">

                                                </tbody>

                                            </table>



                                            <center>  <span id="tasksstat" class="label label-danger"></span></center>
                                        </div>
                                        <!-- /.box-body -->
                                    </div>
                                    <!-- /.box -->
                                </div>
                            </div>


                        </div>


                    </div>

                    <div class="modal-footer">

                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal modal-success fade" id="lvEntitlementid">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">H.R.M.D Leave Entitlement</h4>
                    </div>


                    <div class="modal-body">
                        <form id="entitlementFrmid">
                            <div id="row">
                                <div class="col-md"> StaffID:<input id="pfnoToSearch" onkeypress="searchPF()" type="text" class="form-control" placeholder="Type in the respective PF Number and Click the Populate button"></div>
                                <br>  <div class="col-md"> <button type="button" id="showEntitlements" hidden class="btn btn-primary  btn-lg">Populate Entitlements</button></div>
                                <br>
                                <div class="col-md"> <button type="button" id="nigganame" class="btn btn-danger  btn-lg">[NAME]</button>
                                    <h4 id="designationID"></h4>

                                </div>

                                <hr>

                            </div>

                            <div class="row">
                                <div class="col-md-3 col-sm-6 col-xs-12">Leave Type:
                                    <div class="form-group">
                                        <select id="lvtypeselectid1" class="form-control"  style="width: 100%;">
                                            <option value ="-" selected="selected">-</option>
                                            <option>Annual Leave</option>
                                            <option>Study Leave</option>
                                            <option>Compassionate Leave</option>
                                            <option>Emergency Leave</option>
                                            <option>Maternity Leave</option>
                                            <option>Paternity Leave</option>
                                            <option>Sports Leave</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">Entitlement(Days-integer): <input id="daysEntitled" type="number" class="form-control"  onfocusout="verifyleave()"></div>
                                <div class="col-md-3 col-lg-6 col-xs-12">Covering Officer:<select disabled="disabled" id="cvoffid" class="form-control"  style="width: 100%;">
                                        <option value ="-" selected="selected">-</option>                                                                                       
                                    </select></div>
                                <!-- <div class="col-md-3 col-sm-6 col-xs-12">Covering Officer:<input name="cvoffid" id="cvoffid" type="text" class="form-control" placeholder="FirstName/PF"> </div>-->
                            </div><!---->

                            <div class="row">
                                <div class="col-md-3 col-lg-6 col-xs-12">
                                    Leave Month:
                                    <select id="monthid1" class="form-control"  style="width: 100%;">
                                        <option value ="-" selected="selected">-</option>
                                        <option>JANUARY</option>
                                        <option>FEBRUARY</option>
                                        <option>MARCH</option>
                                        <option>APRIL</option>
                                        <option>MAY</option>
                                        <option>JUNE</option>
                                        <option>JULY</option>
                                        <option>AUGUST</option>
                                        <option>SEPTEMBER</option>
                                        <option>OCTOBER</option>
                                        <option>NOVEMBER</option>

                                    </select>
                                </div>

                                <div class="col-md-3 col-lg-6 col-xs-12">
                                    Permission type:
                                    <select id="permtypeid" class="form-control"  style="width: 100%;" disabled>
                                        <option value ="-" selected="selected">-</option>

                                        <option>GRANTED</option>
                                        <option>PLANNED</option>


                                    </select>
                                </div>
                            </div>
                            <hr>
                            <div class="row">

                                <div class="col-md-3 col-lg-6 col-xs-12">
                                    <!--Exhaust-->
                                    <div class="form-group">

                                        Approved start date(For Granted Leave):
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>

                                            <input type="text" class="form-control pull-right" name="grantdate" id="grantdate">
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-3 col-lg-6 col-xs-12">
                                    Depends on/Balance:
                                    <input id="dependsonid" type="text" class="form-control" disabled>
                                </div>
                            </div>

                            <hr>
                            <button type="button" id="saveEntitlementid" class="btn btn-outline btn-primary">Update Entitlements</button>
                            <br><br>

                            <div id="table" class="table-editable">

                                <table id="entitlementTblid" class="table">
                                    <tr>
                                        <th>Leave Year</th>
                                        <th>Leave Type</th>

                                        <th>#Days</th>
                                        <th>Person Covering</th>
                                        <th>Leave Month</th>
                                        <th></th>
                                        <th></th>

                                    </tr>
                                    <tbody id="lvtbodyID"></tbody>

                                </table>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>

                        <button type="button" id="printEntitlementid" class="btn btn-outline" onclick="printEntitlements()">Print Entitlements</button>

                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal modal-defsult fade" id="deferrmentModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Defer Leave</h4>
                    </div>

                    <div class="modal-body">
                        <div id="row">
                            Leave ID:<input id="lvid" type="text" class="form-control" disabled>

                            Staff ID: <input id="staffiddef" type="text" class="form-control" disabled>

                            Type of Leave Requested: <input id="typeoflvrq" type="text" class="form-control" disabled>

                            Number of Days(Balance): <input id="lvbaldef" type="number" class="form-control" disabled>


                            Particulars:

                            <form>
                                <textarea disabled id="partdef" 
                                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                            </form>


                        </div>

                        <div id="row">
                            Defer leave to start on:
                            <div class="input-group date">
                                <div class="input-group-addon">
                                    <i class="fa fa-calendar"></i>
                                </div>
                                <input type="text" class="form-control pull-right" name="appldate1" id="appldate1">
                            </div>

                            <div class="col">For(Number of Days): <input id="daysDeffered" type="number" class="form-control" ></div>


                            Reason for deferrment: <input id="reasoniddef" type="text" class="form-control" >
                        </div>
                    </div>

                    <div class="modal-footer">
                        <button id="defclodebtn" type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button id="savedefid" type="button" class="btn btn-primary">Defer Leave</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div id="fuelrqmodal" class="modal fade" id="modal-default">
            <div class="modal-lg modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 id="applicationtitleid" class="modal-title">My Application</h4>&nbsp;&nbsp;&nbsp;&nbsp;

                        <h4 id="leaveYridModal"></h4>
                    </div>
                    <div class="modal-body">

                        <form  id="applicationformid">





                            <hr>

                            <strong>PART 1: Personal Details:</strong>
                            <div class="row ">
                                <div class="col-md-3 col-lg-6 col-xs-12">Full name: <input id="fullnameid" type="text" class="form-control"  disabled></div>
                                <div class="col-md-3 col-sm-6 col-xs-12">Designation: <input id="designationid" type="text" class="form-control" disabled></div>
                                <div class="col-md-3 col-sm-6 col-xs-12">P/F Number: <input id="empnoid" type="text" class="form-control" disabled> </div>




                            </div><!--End of Row1-->


                            <hr>

                            <div class="row">
                                <div class="col-md-3 col-lg-4 col-xs-12">Section <input id="sectionid" type="text" class="form-control"  disabled></div>
                                <div class="col-md-3 col-lg-4 col-xs-12">Department <input id="dept2id"  type="text" class="form-control" disabled></div>
                                <div class="col-md-3 col-sm-6 col-xs-12">Email: <input id="emailid" type="text" class="form-control" disabled> </div>
                            </div><!---->
                            <hr>
                            <div class="row ">
                                <div class="col-md-3 col-lg-6 col-xs-12">Organization/Individual Requesting: <input id="organizationreqid" type="text" class="form-control" value="MTRH" ></div>
                            </div>

                            <hr>
                            <strong>Part 1A: Fleet Application Details </strong> <br>
                            <div class="row">
                                <div class="col-md-3 col-lg-5 col-xs-12">Request Type:
                                    <div class="form-group">
                                        <select id="rqtypeselectid" class="form-control"  style="width: 100%;">
                                            <option value ="-" selected="selected">-</option>
                                            <option>Request for Internal Use</option>
                                            <option>Request for Hire(Staff)</option>
                                            <option>Request for Hire(External)</option>


                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-3 col-xs-12">From: <input id="fromid" type="text" class="form-control" value="MTRH"></div>
                                <div class="col-md-3 col-sm-6 col-xs-12">Destination:<input name="daysAppliedid" id="destid" type="text" class="form-control"> </div>
                            </div><!---->

                            Date of departure:
                            <div class="row">
                                <div class="col-md-3 col-lg-5 col-xs-12">
                                    <div class="form-group">
                                        <div class="input-group date">
                                            <div class="input-group-addon">
                                                <i class="fa fa-calendar"></i>
                                            </div>
                                            <input type="text" class="form-control pull-right" name="fleetdept" id="fleetdept">
                                        </div>
                                    </div>
                                    <!-- /.input group -->
                                </div>
                                <!-- /.form group -->
                                <div class="col-md-3 col-lg-5 col-xs-12">
                                    Estimated Time of Departure:
                                    <div class="form-group">
                                        <input id="depttime" type="text" class="form-control" >
                                    </div></div>

                            </div>
                            <div class="row">
                                <div class="col-md-3 col-lg-5 col-xs-12">Vehicle type requested: 
                                    <div class="form-group">

                                        <select id="vehiclerequestedid" class="form-control"  data-placeholder="Vehicle type requested"
                                                style="width: 100%;">
                                            <option>-</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3 col-lg-5 col-xs-12">Purpose of Visit:<input id="purposeid" type="text" class="form-control" placeholder="Type a purpose here briefly"> </div>
                                <!--  <div class="col-md-3 col-lg-3 col-xs-12">E-Mail:<input id="cvemail" type="text" class="form-control" disabled> </div>-->
                            </div><!---->

                            <hr>                        


                            <div class="box">
                                <div class="box-header">
                                    <h3 class="box-title">Passenger Manifest
                                        <small>Add passengers who shall be boarding</small>
                                    </h3>
                                    <!-- tools box -->
                                    <div class="pull-right box-tools collapsed-box" >
                                        <button type="button" class="btn btn-default btn-sm" data-widget="collapse" data-toggle="tooltip"
                                                title="Collapse">
                                            <i class="fa fa-minus"></i></button>

                                    </div>
                                    <!-- /. tools -->
                                </div>
                                <!-- /.box-header -->
                                <div class="box-body pad">
                                    <div id="row">
                                        <div class="col-md-3 col-lg-5 col-xs-12">Select a Staff Member 
                                            <div class="form-group">

                                                <select id="contactslist" class="form-control"  data-placeholder="Members"
                                                        style="width: 100%;">
                                                    <option>-</option>

                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="row">
                                        <button type="button" class="btn-app" id="nonmemberbtnid">Add Non-Staff Member</button><br>
                                        <div class="table-responsive">
                                            <table id="manifesttbl" class="table no-margin">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>ID No/PF</th>
                                                        <th>Contact Info</th>
                                                        <th></th>

                                                    </tr>
                                                </thead>
                                                <tbody id="manifesttblbd">

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="modal-footer">
                        <button id="closapplmodalid" type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        <button id="savefleetrq" type="button" class="btn btn-primary" data-dismiss="modal">Post Application</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="communicationID">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 id="communicationTitleID" class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div class="box-body pad">
                            <form>
                                <textarea id="commentboxid1"  placeholder="Place some text here"
                                          style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="closeMsgr" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        <button type="button" id="sendMsgid" class="btn btn-primary">Send Message</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->




        <div class="modal fade" id="chPwdModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Change Password</h4>
                    </div>
                    <div class="modal-body">
                        <div class="box-body pad">

                            <form>
                                New Password: <input id="oldPw" type="password" class="form-control" >
                                Repeat Password: <input id="nwPw" type="password" class="form-control" >
                            </form>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="closeChPw" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                        <button type="button" id="chPWBtn" class="btn btn-primary" disabled>Change Password</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!--Starting view modal 0714 253 424-->


        <div class="modal fade" id="viewstatmodal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 id="statstitle" class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div class="box-body pad">
                            <div class="table-responsive">
                                <table id="myStatstbl" class="table no-margin">
                                    <thead>
                                        <tr>
                                            <th>Reference</th>
                                            <th>Type of Leave</th>
                                            <th>#Days</th>
                                            <th></th>

                                        </tr>
                                    </thead>
                                    <tbody id="myStatstblbd">

                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->

                        </div>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!--End-->


        <div class="modal modal-info fade" id="nonmemberadditionid">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">Add a non Staff Passenger</h4>
                    </div>
                    <div class="modal-body">
                        <p id="oidid"></p>
                        Name: <h3 style="color: red" id="nametoeditid3"></h3>

                        <div class="row">

                            <div class="col-md-3 col-lg-12 col-xs-12">Full Name: <input id="nonmemberfullnameid" type="text" class="form-control" ></div>

                            <!-- <div class="col-md-3 col-sm-6 col-xs-12">Covering Officer:<input name="cvoffid" id="cvoffid" type="text" class="form-control" placeholder="FirstName/PF"> </div>-->
                        </div>

                        <div class="row">

                            <div class="col-md-3 col-lg-12 col-xs-12">Identification Number(PAssport/ID No): <input id="nonmemberid" type="text" class="form-control" ></div>

                        </div>


                        <div class="row">

                            <div class="col-md-3 col-lg-12 col-xs-12">Contact Information: <input id="nonmembercontactid" type="text" class="form-control" ></div>

                        </div>



                    </div>
                    <div class="modal-footer">
                        <button id="closeeditBtnid" type="button" class="btn btn-outline pull-left" data-dismiss="modal">Close</button>
                        <button type="button" id="addmemerid" class="btn btn-outline" >Add Passenger</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <button class="open-button" onclick="openForm()">Chat</button>

        <!--   <div class="chat-popup" id="myForm">
               <form action="/action_page.php" class="form-container">
                   <h1>Chat</h1>
   
                   <label for="msg"><b>Message</b></label>
                   <textarea placeholder="Type message.." name="msg" required></textarea>
   
                   <button type="submit" class="btn">Send</button>
                   <button type="button" class="btn cancel" onclick="closeForm()">Close</button>
               </form>
           </div> -->


        <div class="box box-info direct-chat direct-chat-danger chat-popup"  id="myForm">
            <div class="box-header with-border" id="chatheader">
                <br>

                <div class="box-tools pull-right">

                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus" style="color:white;"></i></button>                                    
                    <button  class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle"><i class="fa fa-comments" style="color:white;" ></i></button>
                    <button class="btn btn-box-tool" id="removewg"><i class="fa fa-times" style="color:white;"></i></button>
                </div>

                <h5 id="chatidTxt" class="box-title">Chat ID</h5>
                <input id="verid" type="text"  placeholder="Type your PF number here and click verify..." class="form-control"><button id="verbtnid" class="btn btn-small btn-success">Verify PF</button>





            </div>
            <!-- /.box-header -->

            <div class="box-body">
                <!-- Conversations are loaded here -->
                <div class="direct-chat-messages" id="parentchatbox">

                </div>

                <div class="direct-chat-contacts">

                    <div class="box-body">
                        <div class="table-responsive">
                            <table id="myprivatechats" class="table no-margin">
                                <thead>

                                </thead>
                                <tbody id="myprivatechatsbd">

                                </tbody>
                            </table>
                        </div>
                        <!-- /.table-responsive -->
                    </div>







                    <!-- /.contatcts-list -->

                    <!-- <ul class="contacts-list">
                         <li disabled="true">
                             <a href="#">
 
 
 
                                 <div class="contacts-list-info">
                                     <span class="contacts-list-name">
                                         Msg
                                         <small class="contacts-list-date pull-right">D/Mm/yyyy</small>
                                     </span>
                                     <span class="contacts-list-msg">The Msg.</span>
                                 </div>
                                 
                             </a>
                         </li>
                        
                     </ul>-->




                </div>
                <!-- /.direct-chat-pane -->
            </div>
            <!-- /.box-body -->
            <div class="box-footer">
                <div class="input-group">
                    <span class="input-group-btn">
                        <button class="btn btn-sm btn-link" onclick="newConvo()"> Start a new conversation</button>
                        <button data-toggle="tooltip" data-widget="chat-pane-toggle" class="btn btn-sm btn-link" > Open my older conversations</button><br></span>
                </div>
                <div class="input-group">
                    <input id="askhrmessageboxid" type="text" onkeypress="enter2sendMsg()" name="message" placeholder="Ask anything here..." class="form-control">
                    <span class="input-group-btn">
                        <button id="askhrsendmsgbtn" type="button" class="btn btn-danger btn-flat" disabled="true">Send</button>
                    </span>
                </div>
            </div>
            <!-- /.box-footer-->
        </div>


        <div class="modal modal-defsult fade" id="resolvmodal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span></button>
                        <h4 id="resheader" class="modal-title"></h4>
                    </div>
                    <div class="modal-body">
                        <div class="direct-chat-messages" id="parentchatbox2">
                            <!--Chats are here-->
                        </div>
                        <form>
                            <label class="checkbox-inline">
                                <input type="checkbox" value="">Raise ticket to Expert
                            </label>
                            <label class="checkbox-inline">
                                <input type="checkbox" value="">Close Issue
                            </label>

                        </form>

                        <form>

                            <br><br>
                            <textarea id="resolutionid" 
                                      style="width: 100%; height: 200px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger pull-left" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-success">Save changes</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal modal-info fade" id="newmsgmodal">
            <div class="modal-dialog modal-lg" style="height: 75%">
                <div class="modal-content">
                    <div class="modal-header">


                        <h4 class="modal-title">Internal Messaging App</h4>
                    </div>
                    <div class="modal-body">
                        <h4 id="msgtitleid"></h4>

                        <div class="box box-info direct-chat direct-chat-danger">
                            <div class="box-header with-border">
                                <h3 class="box-title">Direct Chat</h3>
                                <div class="box-tools pull-right">

                                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>                                    
                                    <button class="btn btn-box-tool" data-toggle="tooltip" title="Contacts" data-widget="chat-pane-toggle"><i class="fa fa-comments"></i></button>
                                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                                </div>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <!-- Conversations are loaded here -->
                                <div class="direct-chat-messages" id="parent">
                                    <!-- Message. Default to the left -->
                                    <div class="direct-chat-msg">
                                        <div class="direct-chat-info clearfix">

                                            <span class="direct-chat-timestamp pull-right">Tonui @ 23 Jan 2:00 pm</span>
                                        </div>

                                        <div class="direct-chat-text">
                                            Is this template really for free? That's unbelievable!
                                        </div>                                        
                                    </div>

                                    <div class="direct-chat-msg right">
                                        <div class="direct-chat-info clearfix">
                                            <span class="direct-chat-name pull-right">Sarah Bullock</span>
                                            <span class="direct-chat-timestamp pull-left">Salim @ 23 Jan 2:05 pm</span>
                                        </div>

                                        <div class="direct-chat-text">
                                            You better believe it!
                                        </div>
                                        <!-- /.direct-chat-text -->
                                    </div>
                                    <!-- /.direct-chat-msg -->
                                </div>

                                <div class="direct-chat-contacts">
                                    <ul class="contacts-list">
                                        <li>
                                            <a href="#">
                                                <img class="contacts-list-img" src="../dist/img/user1-128x128.jpg" alt="Contact Avatar">
                                                <div class="contacts-list-info">
                                                    <span class="contacts-list-name">
                                                        Count Dracula
                                                        <small class="contacts-list-date pull-right">2/28/2015</small>
                                                    </span>
                                                    <span class="contacts-list-msg">How have you been? I was...</span>
                                                </div>
                                                <!-- /.contacts-list-info -->
                                            </a>
                                        </li>
                                        <!-- End Contact Item -->
                                    </ul>
                                    <!-- /.contatcts-list -->
                                </div>
                                <!-- /.direct-chat-pane -->
                            </div>
                            <!-- /.box-body -->
                            <div class="box-footer">
                                <div class="input-group">
                                    <input id="messageboxid" type="text" name="message" placeholder="Type Message ..." class="form-control">
                                    <span class="input-group-btn">
                                        <button id="sendmsgbtn" type="button" class="btn btn-danger btn-flat">Send</button>
                                    </span>
                                </div>
                            </div>
                            <!-- /.box-footer-->
                        </div>
                        <!--/.direct-chat -->
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>

        <!--Modal-->

        <div class="modal modal-danger fade" id="authenticateid">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">


                        <h4 class="modal-title">OTP Authentication</h4>
                    </div>
                    <div class="modal-body">
                        <h4>Sorry, your session is not authenticated</h4>

                        <p>Please enter the code sent to your SMS in the field below and click [Authenticate];</p>
                        <hr>
                        <input type="text" maxlength="5" class="form-control" id="authcodid" placeholder="5-Digit Authentication" autocomplete="off">
                    </div>
                    <div class="modal-footer">
                        <button type="button" id="changemyno" class="btn btn-link">Change My Number</button>
                        <button type="button" id="resendid" class="btn btn-link">Resend OTP Message</button>
                        <button type="button" id="authenticatebtn" class="btn btn-outline">Authenticate</button>
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->

        <div class="modal fade" id="pwdID">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <!-- <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                             <span aria-hidden="true">&times;</span></button>-->
                        <span class="fa fa-key"><h4 class="modal-title">Login Window</h4></span>

                    </div>
                    <div class="modal-body">
                        <form id="Login">


                            <div class="form-group">
                                <label>Login Method</label>

                                <select id="loginMethod" class="form-control select2" style="width: 100%;">
                                    <option value="Staff ID" selected="selected">Staff ID</option>
                                    <option value="Staff E-Mail">Staff E-mail</option>

                                </select>
                            </div>



                            <div class="form-group">


                                <input type="text" class="form-control" id="inputUserid" placeholder="Login ID" autocomplete="off">

                            </div>

                            <div class="form-group">

                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">

                            </div>

                            <div class="row">                                                                
                                <div class="col-md-6">
                                    <input type="text" class="form-control" id="secKeyid" placeholder="Security Key" autocomplete="off"> 
                                </div>

                                <div class="col-md-6">
                                    <button id="accesscodeid" type="button" class="btn btn-success">Get Code</button>         
                                </div>
                            </div>
                            <div class="row">                                                                                                
                                <div class="col-md-6">
                                    <button id="confbtn" type="button" class="btn btn-link"></button>         
                                </div>
                            </div>
                            <br>
                            <!-- <div class="forgot">
                                 <a href="reset.html">Forgot password?</a>
                             </div>-->

                            <button type="button" id="accessBtn" class="form-control btn btn-file" disabled>Login</button>

                            <div class="row">
                                <div class="col-md-6">

                                </div>



                        </form>
                    </div>


                    <div class="modal-footer">
                        &copy; Property of Moi Teaching and Referral Hospital
                    </div>
                </div>
                <!-- /.modal-content -->
            </div>
            <!-- /.modal-dialog -->
        </div>
    </div>
    <!-- /.modal -->


    <!-- Optionally, you can add Slimscroll and FastClick plugins.
    Both of these plugins are recommended to enhance the
            user experience.-->

    <!-- Start of Async Drift Code -->
    <!--
<script>
"use strict";

!function() {
  var t = window.driftt = window.drift = window.driftt || [];
  if (!t.init) {
    if (t.invoked) return void (window.console && console.error && console.error("Drift snippet included twice."));
    t.invoked = !0, t.methods = [ "identify", "config", "track", "reset", "debug", "show", "ping", "page", "hide", "off", "on" ], 
    t.factory = function(e) {
      return function() {
        var n = Array.prototype.slice.call(arguments);
        return n.unshift(e), t.push(n), t;
      };
    }, t.methods.forEach(function(e) {
      t[e] = t.factory(e);
    }), t.load = function(t) {
      var e = 3e5, n = Math.ceil(new Date() / e) * e, o = document.createElement("script");
      o.type = "text/javascript", o.async = !0, o.crossorigin = "anonymous", o.src = "https://js.driftt.com/include/" + n + "/" + t + ".js";
      var i = document.getElementsByTagName("script")[0];
      i.parentNode.insertBefore(o, i);
    };
  }
}();
drift.SNIPPET_VERSION = '0.3.1';
drift.load('fivi3mx2g6yk');
</script>  -->
    <!-- End of Async Drift Code --> 

</body>
</html>
