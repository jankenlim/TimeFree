<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Termpad.aspx.cs" Inherits="TimeFree_csharp.Termpad" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="JS/bootstrap.js"></script>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/termpad/style.css" rel="stylesheet" />
    <title>Termpad</title>

</head>
<body>
    <div class="container" style="width: 400px; margin-right: 0!important">
        <div class="row" id="termpadcontrolholder">
            <div class="col-lg-6 col-md-6 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/call%20white.png" style="width: 25%" />
                    <h2>Call</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/repeatcall%20white.png" style="width: 25%" />
                    <h2>Repeat Call</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/endticket%20white.png" style="width: 25%" />
                    <h2>End Ticket</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/no%20show%20white.png" style="width: 25%" />
                    <h2>No Show</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/recall%20white.png" style="width: 25%" />
                    <h2>Recall</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/transfer%20white.png" style="width: 25%" />
                    <h2>Transfer</h2>
                </div>
            </div>
            <div class="col-lg-12 col-md-12 block">
                <div class="blockinner">
                    <img src="IMG/icon-termpad/white/next white.png" style="width: 25%" />
                    <h2>Next</h2>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
