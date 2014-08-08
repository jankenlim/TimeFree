$(document).ready(function () {

    $('#ManageTransactionTable').dataTable({
        bFilter: false,
        bInfo: false,
        "iDisplayLength": 5
    });

    imagePreview();
});

this.imagePreview = function () {
    /* CONFIG */

    xOffset = 10;
    yOffset = 30;

    // these 2 variable determine popup's distance from the cursor
    // you might want to adjust to get the right result

    /* END CONFIG */
    $("img.preview").hover(function (e) {
        this.t = this.title;
        this.title = "";
        var c = (this.t != "") ? "<br/>" + this.t : "";
        $("body").append("<p id='preview'><img src='" + this.href + "' alt='Image preview' />" + c + "</p>");
        $("#preview")
			.css("top", (e.pageY - xOffset) + "px")
			.css("left", (e.pageX + yOffset) + "px")
			.fadeIn("fast");
    },
	function () {
	    this.title = this.t;
	    $("#preview").remove();
	});
    $("img.preview").mousemove(function (e) {
        $("#preview")
			.css("top", (e.pageY - xOffset) + "px")
			.css("left", (e.pageX + yOffset) + "px");
    });
};

$(function () {
    $('#side-menu').metisMenu();
});