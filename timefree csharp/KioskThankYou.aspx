<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="KioskThankYou.aspx.cs" Inherits="TimeFree_csharp.KioskThankYou" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <link href="CSS/Kiosk%20thank%20you/style.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="col-lg-6 col-md-6 col-sm-6">
            <h1>Thank You, Guest</h1>
            <hr style="margin-top: 5px; margin-bottom: 3px"/>
            <h3 style="margin-top: 3px;">Your queue number is</h3>
            <span id="queuenumber">55266</span>
            <h3>You will be served in about</h3>
            <span id="estimatetime">2 hours and 50 minutes</span>
            <hr />
            <h4>Please get your printed ticket below</h4>
            <h4>Enjoy and have a good day!</h4>
        </div>
    </div>   
</body>
</html>
