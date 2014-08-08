<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageTransactionDashboard.aspx.cs" Inherits="TimeFree_csharp.ManageTransactionDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>

    <!-- JS -->
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="JS/bootstrap.js"></script>
    <script src="JS/metisMenu.js"></script>
    <script src="JS/jquery.dataTables.min.js"></script>
    <script src="JS/ManageTransactionDashboard/main.js"></script>

    <!-- CSS -->
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/AdminDashboard/style.css" rel="stylesheet" />
    <link href="CSS/metisMenu.css" rel="stylesheet" />
    <link href="CSS/font-awesome.css" rel="stylesheet" />
    <link href="CSS/dataTables.bootstrap.css" rel="stylesheet" />

</head>
<body>
    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="AdminDashboard.html">
                    <img src="IMG/logotimefree_white.png" style="height: 100%;"/></a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i>User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i>Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li>
                            <a class="active" href="index.html"><i class="fa fa-dashboard fa-fw"></i>&nbsp;Dashboard</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-gear fa-fw"></i>&nbsp;General Setup</a>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-users fa-fw"></i>&nbsp;FLA Manager<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse">
                                <li>
                                    <a href="#">User</a>
                                </li>
                                <li>
                                    <a href="#">Roles</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i>&nbsp;Reports/Statistics</a>
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Manage Transactions</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>

            <table id="ManageTransactionTable" class="table table-striped" style="width: 100%">
                    
                    <thead>
                        <tr>
                            <th>Actions</th>
                            <th>Transaction</th>
                            <th>Benchmark</th>
                            <th>Display Series</th>
                            <th>Icon</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><button type="button" class="btn btn-default btn-xs">Edit</button>
                                <button type="button" class="btn btn-danger btn-xs">Delete</button>
                            </td>
                            <td>Money Transfer</td>
                            <td>3</td>
                            <td>test</td>
                            <td><img src="IMG/icon-blue/bag19.png" style="width:20px" class="preview"/>&nbsp;&nbsp;&nbsp;bag19.png</td>
                        </tr>
                        <tr>
                            <td><button type="button" class="btn btn-default btn-xs">Edit</button>
                                <button type="button" class="btn btn-danger btn-xs">Delete</button></td>
                            <td>Forex</td>
                            <td>3</td>
                            <td>test</td>
                            <td><img src="IMG/icon-blue/bag19.png" style="width:20px" class="preview"/>&nbsp;&nbsp;&nbsp;bag19.png</td>
                        </tr>
                        <tr>
                            <td><button type="button" class="btn btn-default btn-xs">Edit</button>
                                <button type="button" class="btn btn-danger btn-xs">Delete</button></td>
                            <td>Deposit</td>
                            <td>5</td>
                            <td>test</td>
                            <td><img src="IMG/icon-blue/bag19.png" style="width:20px" class="preview"/>&nbsp;&nbsp;&nbsp;bag19.png</td>
                        </tr>
                        <tr>
                            <td><button type="button" class="btn btn-default btn-xs">Edit</button>
                                <button type="button" class="btn btn-danger btn-xs">Delete</button></td>
                            <td>Fund Transfer</td>
                            <td>6</td>
                            <td>test</td>
                            <td><img src="IMG/icon-blue/bag19.png" style="width:20px" class="preview"/>&nbsp;&nbsp;&nbsp;bag19.png</td>
                        </tr>
                        <tr>
                            <td><button type="button" class="btn btn-default btn-xs">Edit</button>
                                <button type="button" class="btn btn-danger btn-xs">Delete</button></td>
                            <td>Payments</td>
                            <td>2</td>
                            <td>test</td>
                            <td><img src="IMG/icon-blue/bag19.png" style="width:20px" class="preview"/>&nbsp;&nbsp;&nbsp;bag19.png</td>
                        </tr>
                    </tbody>
                </table>

            <div class="row">

                
                
            </div>
            <!-- /.row -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
</body>
</html>

