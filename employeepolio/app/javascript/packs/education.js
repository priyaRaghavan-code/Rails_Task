$(document).ready(function() {
    $('.education_data').click(function(e) {
        e.preventDefault();
        var modal_data = $(this).data('target');
        var url = $(this).data('url');
        $target = $('#education_container');
        $.ajax({
            url: url,
            dataType: "JSON"
        }).done(function(content) {
            $target.html(content.html);
            $("#" + modal_data).modal("show");
        }).fail(function(response, data) {
            $target.html($("<span>Form haven't been loaded successfully</span>"));
        });
    });
});

$(document).ready(function() {
    $('#editEducationModal').submit(function(e) {
        e.preventDefault();
        var modal_values = $(this).serialize();
        var url = $(this).data('url');
        $target = $('#education_container');
        $.ajax({
            url: url,
            data: modal_values,
            dataType: "JSON"
        }).done(function(data) {
            debugger;
            $target.html(data.html);
        }).fail(function(response, data) {
            debugger;
            $target.html($("<span>Form haven't been loaded successfully</span>"));
        });
    });
});