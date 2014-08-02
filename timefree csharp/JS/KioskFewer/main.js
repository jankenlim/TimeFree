

$(document).ready(function () {
    $(document).on('click', '#openModalDialog', function () {
        var id = $(this).data('id');
        var wait = $(this).data('wait');
        var response;
        $('#modaltran').text(id);
        $("#trantypehidden").val(id);
        $('#servednumber').text(wait);
    });
 

});
