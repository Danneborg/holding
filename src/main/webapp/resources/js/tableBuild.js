$(document).ready(function () {


    $('#resultsTable').dataTable({
        "paging": {
            "enabled": true,
            "position": "right",
            size:20
        },
        "filtering": {
            "enabled": true
        },
        "sorting": {
            "enabled": true
        }
    });
});