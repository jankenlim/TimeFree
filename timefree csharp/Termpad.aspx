<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Termpad.aspx.cs" Inherits="TimeFree_csharp.Termpad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Javascripts -->
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="JS/bootstrap.js"></script>
    <script src="JS/Termpad/main.js"></script>

    <!-- icons -->
    <link href="CSS/termpadicons.css" rel="stylesheet" />

    <!-- style -->
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/termpad/style.css" rel="stylesheet" />

    <title>Termpad</title>

</head>
<body onload="changeScreenSize(200,768)">
        <div id="termpadcontrolholder">
            <h3>Counter</h3>
            <h2>5</h2>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/call%20white.png" style="height:60%"/>
                <h4>Call</h4>
            </div>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/repeatcall%20white.png" style="height:60%"/>
                <h4>Repeat Call</h4>
            </div>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/endticket%20white.png" style="height:60%"/>
                    <h4>End Ticket</h4>
            </div>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/no%20show%20white.png" style="height:60%"/>
                <h4>No Show</h4>
            </div>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/recall%20white.png" style="height:60%"/>
                <h4>Recall</h4>
            </div>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/transfer%20white.png" style="height:60%"/>
                <h4>Transfer</h4>
            </div>
            <div class="block skyblock">
                <img src="IMG/icon-termpad/white/next%20white.png" style="height:60%"/>
                <h4>Next</h4>
            </div>
        </div>
    </body>
</html>


<!--
    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block">
                <div class="blockinner">
                    <span class="icon-talking2 icons"></span>
                    <h2>Call</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block">
                <div class="blockinner">
                    <span class="icon-two123 icons"></span>
                    <h2>Repeat Call</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block">
                <div class="blockinner">
                    <span class="icon-delete8 icons"></span>
                    <h2>End Ticket</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block">
                <div class="blockinner">
                    <span class="icon-warning12 icons"></span>
                    <h2>No Show</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block">
                <div class="blockinner">
                    <span class="icon-back1 icons"></span>
                    <h2>Recall</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 block">
                <div class="blockinner">
                    <span class="icon-two11 icons"></span>
                    <h2>Transfer</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 block">
                <div class="blockinner">
                    <span class="icon-fast19 icons"></span>
                    <h2>Next</h2>
                </div>
            </div>


-->
