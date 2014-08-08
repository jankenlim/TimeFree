<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KioskFewer.aspx.cs" Inherits="TimeFree_csharp.KioskFewer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>TimeFree Innovations</title>
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link href="CSS/kiosk%20fewer/style.css" rel="stylesheet" />
    <!-- js declarations -->
    <script src="js/modernizr.custom.js"></script>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="js/bootstrap.js"></script>
    <script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.7/jquery.validate.min.js"></script>
    <script src="JS/KioskFewer/main.js"></script>
    <script src="JS/KioskFewer/Date.js"></script>
    <!-- js declarations -->
    <script type="text/javascript">
        function openModal() {
            $('#ThankYou').modal("show").on('hide', function() { 
                $('#currentlyServing').modal('hide') 
            });
        };
        function checkNet() {
            $('#checkNet').modal('show');
        }
    </script>
</head>
<body>
    <div id="header">
        <div class="pull-left" id="clockholder" onload="date()">
        </div>
        <img class="pull-right" src="img/logotimefree.png" style="height: 100%;" />
    </div>
    <div class="container" id="wrapper">
        <div id="content">
            <div class="row imageholder" runat="server" >
                <!-- list of services. note that it can only accomodate 12 columns -->
                <% if(Transaction.Transactionlist!=null)
                    foreach(TimeFree_csharp.Structure.TransactionTypes i in Transaction.Transactionlist) {%>
                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-2 b-white">
                    <a id="openModalDialog" class="service md-trigger" data-toggle="modal" data-target="#currentlyServing" data-id="<%=i.tranType%>" data-wait="<%=i.waitingCustomers%>">
                        <!-- image of the service -->
                        <div class="b-white">
                            <img src="img/icon-blue/<%=i.iconName %>" class="imageclip" />
                        </div>
                        <!-- service name -->
                        <div class="b-darkblue">
                            <h2><%=i.tranType %></h2>
                        </div>
                    </a>
                </div>
                <% } %>
                <!-- end list of service -->
            </div>
        </div>
    </div>

    <div class="modal fade" id="checkNet" tabindex="-1" role="dialog" aria-labelledby="ThankYou" aria-hidden="true" style="margin-top: 200px">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-body">
                  <center><img src="IMG/icons/world82.svg" style="width:50%;" /></center>
                  <h1>We seem to have problems connecting right now. Please try again.</h1>
            </div>
          </div>
        </div>
    </div>

    <!-- Thank you -->
    <div class="modal fade" id="ThankYou" tabindex="-1" role="dialog" aria-labelledby="ThankYou" aria-hidden="true" style="margin-top: 150px">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-body">

                  <h1>
                      Thank you, <%=userDetails.customerName%>
                  </h1>
                <hr style="margin-top: 5px; margin-bottom: 3px"/>
                <h3 style="margin-top: 3px;">Your queue number is</h3>
                <span id="queuenumber"><%=userDetails.queueNo %></span>
                <h3> <%=waitmsg %></h3>
                <% if (waitmsg == "You will be served in about") {%>
                <span id="estimatetime"><%=userDetails.awt %> </span>                
                <% } %>
                <hr />
                <h4>Please get your printed ticket below</h4>
                <h4>Enjoy and have a good day!</h4>
            </div>
          </div>
        </div>
    </div>
    <!-- End Thank you -->

    <!-- pop up ask for name and mobile num -->
    <div class="modal fade" id="currentlyServing" tabindex="-1" role="dialog" aria-labelledby="currentlyServing" aria-hidden="true" style="margin-top: 300px">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body">
              <div class="row">
                <div class="col-md-6" id="leftpanel">
                        <h2 id='modaltran'></h2><!-- tran type -->                    
                        <hr />
                        <h4>No. of people waiting in line</h4>
                        <h1 id="servednumber"></h1>
                    </div>
                  <div class="col-md-6" id="rightpanel">
                      <form id="formform" runat="server">
                            <div class="form-group form-group-lg">
                                <asp:TextBox name="nameholder" class="form-control" placeholder="Name" runat="server" ID="nameholder"/>
                            </div>
                            <div class="form-group form-group-lg" style="margin-top: 7px;">
                                <asp:TextBox name="mobilenumber" class="form-control" placeholder="Mobile Number" runat="server" ID="mobilenumber"/>
                                <asp:HiddenField runat="server" ID="trantypehidden"/>
                            </div>
                            <div class="btn-group pull-right" style="margin-top: 7px;">
                                <asp:Button name="submitbtn" class="btn btn-primary" runat="server"  onClick="submitform" Text="Submit" />
                                <button type="button" class="btn btn-danger md-close" id="cancelbutton" data-dismiss="modal">Cancel</button>
                            </div>
                            
                        </form>
                  </div>
                </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end pop up -->
    
</body>
</html>
