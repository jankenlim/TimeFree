<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TermpadInit.aspx.cs" Inherits="TimeFree_csharp.TermpadInit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Termpad Init</title>
    <link href="CSS/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="JS/bootstrap.js"></script>
</head>
<body>
    <div>
        <a class="btn btn-warning" onclick="openPortrait()">Open in Portrait</a>
    </div>
    <script type="text/javascript">
        function openPortrait() {
            var screenwidth = window.screen.availWidth + "px";
            window.open('Termpad.aspx', 'newwindow', 'width=200, height=768px, left=1360px, resizable=no,scrollbars=no');
            return false;
        }
    </script>
</body>
</html>
