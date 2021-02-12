$(document).ready(function () {

    var ajax_running = false;

    function ajaxSendData(paramName, paramValue) {

        console.log(paramName, paramValue);
        if (!ajax_running) {
            $.ajax
            ({
                type: "POST",
                data: "parameterName=" + paramName + "&parameterValue=" + paramValue,
                url: "/holding/holdingsResult",
                success: function (html) {

                    $('#content').empty();
                    $('#content').html(html);
                },
                error: function (er) {
                    console.log(er);
                },
            });
        }
    }

    $("body").append("<div id='tooltip'></div>");


    $("#formRefferences").submit(function (e) {
        let paramName = $("#inputDataModal").val();
        let paramValue = $('#paramName').val().trim();
        prepareValues(paramName, paramValue);
        return false;
    });

    function prepareValues(paramName, paramValue) {

        if (paramName === 'Name') {
            let innValue = paramValue.replace(/[^\d]/g, '');
            if (innValue.length > 9) {
                ajaxSendData(paramName, innValue);
                // console.log(paramName, paramValue);
            }
        } else {
            // console.log(paramName, paramValue);
            ajaxSendData(paramName, paramValue);
        }

    }

    $(document).ajaxStart(function () {
        ajax_running = true;
        $('#content').css('visibility', 'hidden');
        // $("#paramName").prop("disabled", true);
        //$("#loadImg").center();
        $('#loadImg').css({
            top: '50%',
            left: '50%',
            margin: '-' + ($('#loadImg').height() / 2) + 'px 0 0 -' + ($('#loadImg').width() / 2) + 'px'
        });
        $("#loadImg").show();
    });

    $(document).ajaxStop(function () {
        ajax_running = false;
        // $("#paramName").prop("disabled", false);
        // $("#loadImg").hide();
        // $('#content').css('visibility', 'visible');

    });
});

setTimeout(function () {

}, 100);