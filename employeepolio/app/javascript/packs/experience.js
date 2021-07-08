$(document).ready(function() {
    $('.experience_data').click(function(e) {
        e.preventDefault();
        var modal_data = $(this).data('target');
        var url = $(this).data('url');
        $target = $('#experience_container');
        $.ajax({
            url: url,
            dataType: "JSON"
        }).done(function(content) {
            $target.html(content.html);
            $("#" + modal_data).modal("show");
            $("#editExpFormId").submit(function() {
                event.preventDefault();
                debugger;
                var valuesToSubmit = $(this).serialize();
                $.ajax({
                    type: $(this).attr('method'),
                    url: $(this).attr('action'),
                    data: valuesToSubmit,
                    dataType: "JSON",
                    success: function(data, status, xhr) {
                        $("#experiencecont").html(data.html);
                        $("#" + modal_data).modal("hide");
                    },
                    error: function(data, status, xhr) {}
                })
                return false;
            });
        }).fail(function(response, data) {
            $target.html($("<span>Form haven't been loaded successfully</span>"));
        });
    });

    $("#editExpFormId").submit(function() {
        event.preventDefault();
        debugger;
        var valuesToSubmit = $(this).serialize();
        $.ajax({
            type: $(this).attr('method'),
            url: $(this).attr('action'),
            data: valuesToSubmit,
            dataType: "JSON",
            success: function(data, status, xhr) {
                $("#experiencecont").html(data.html);
                $("#add_exp_modal").modal("hide");
            },
            error: function(data, status, xhr) {}
        })
        return false;
    });

});