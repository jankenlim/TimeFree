$(document).ready(function () {

    $('#ManageTransactionTable').dataTable({
        bFilter: false,
        bInfo: false,
        "iDisplayLength": 5,
        "aoColumnDefs": [
          { 'bSortable': false, 'aTargets': [-1] }
        ]
    });
});

$(function () {
    $('#side-menu').metisMenu();
});