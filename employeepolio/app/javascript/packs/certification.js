$(function() {
    $('#new_certificate').click(function(e) {
        e.preventDefault();
        var url = $(this).data('url');
        $target = $('#form_container');
        $.ajax({
            url: url,
            dataType: "html"
        }).done(function(content) {
            $target.append(content);
        }).fail(function(response, data) {
            $target.html($("<span>Form haven't been loaded successfully</span>"));
        });
    });
});