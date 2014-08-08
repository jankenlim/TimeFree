<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="TimeFree_csharp.Display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>TimeFree Innovations</title>
		<link rel="stylesheet" href="CSS/bootstrap.css" />
        <link rel="stylesheet" href="CSS/display/style.css" />  
        
	</head>
	<body>
		<div class="container" style="padding-top: 25px">
			<div class="row">
				<div class="col-lg-6">
					<img src="img/logotimefree.png" style="width: 35%" />
					<img src="img/logocompany.jpg" style="width: 35%; padding-left: 20px" />
				</div>
				<div class="col-lg-6">
					
				</div>
			</div>
			<div class="row" id="counterholder" style="padding-top: 25px">
			</div>
            <div class="row" style="padding-top: 10px">
                <div class="col-lg-6" id="vidplay">
                    <video src="img/Erik%20Spoelstra%20for%20SMART%20Infinity.mp4" controls="controls" loop="loop"/>
                </div>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 300px">
              <div class="modal-dialog">
                <div class="modal-content" id="modalcontent">
                  <div class="modal-body">
                    <h1>Now Serving</h1>
                    <hr />
                    <span id="queueNo"></span>
                    <hr />
                    <h1 id="counterNo"></h1>
                  </div>
                </div>
              </div>
            </div>
            <div id="modalholder">

            </div>
		</div>
        <script src="Scripts/jquery-1.10.2.js"></script>
        <script src="JS/bootstrap.js"></script>
        <script src="JS/display/main.js"></script>
	</body>
</html>
