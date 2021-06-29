$(function() {
    $('.education_data').click(function(e) {
        e.preventDefault();
        var url = $(this).data('url');
        $target = $('#education_container');
        alert("clicked");
        $.ajax({
            url: url,
            dataType: "html"
        }).done(function(content) {
            $target.html(content);
        }).fail(function(response, data) {
            $target.html($("<span>Form haven't been loaded successfully</span>"));
        });
    });
});