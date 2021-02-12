// Resizing table,add scroll,destroy pagination
//$('#content').hide();
$(document).ready(function () {

    $("#resultsTable").dataTable().fnDestroy();
    $($.fn.dataTable.tables(true)).DataTable().columns.adjust();

    $('#resultsTable tr > *:nth-child(1)').hide();

    // $('#resultsTable tr > *:last-child').hide();

    $('#resultsTable thead tr th:last-child').html('Дата последнего изменения');

    $('tbody tr').each(function () {

        if ($(this).find("td:eq(1)").text() == $(this).find("td:eq(3)").text()
            && $(this).find("td:eq(5)").text() == $(this).find("td:eq(7)").text()) {
            $(this).css({backgroundColor: '#db99e8cc'});
        }
    });

    $('table tbody td').each(function () {
        var cellText = $(this).html().trim().replace('null', '');
        $(this).html(cellText);
    });

    let tdElem = [
        $('table tbody tr td:nth-child(14)'),
        $('table tbody tr td:nth-child(15)'),
        $('table tbody tr td:nth-child(16)'),
        $('table tbody tr td:nth-child(17)'),
        $('table tbody tr td:nth-child(22)'),
        $('table tbody tr td:nth-child(23)'),
        $('table tbody tr td:nth-child(24)'),
    ];

    tdElem.forEach(function (item) {
        item.each(function () {
            var variable = $(this).html().trim();

            if ($.isNumeric(variable)) {
                variable = Number(variable);
                $(this).html(variable.toLocaleString().replace(',', '.'));
            } else {
                console.log(variable, 'nan');
            }

        });
    });

    setTimeout(function () {
        $("#resultsTable").dataTable().fnDestroy();
        $('#resultsTable').DataTable({
            "scrollX": true,
            "autoWidth": false,
            scrollY: "400px",
            fixedHeader: true,
            fixedColumns: true,
            paging: true,
            scrollCollapse: true,
            ordering: true,
            "aaSorting": [],
            // "bAutoWidth": false,
            "language": {
                "lengthMenu": "Показать _MENU_ записей на странице",
                "info": "Показаны с _START_ по _END_ (всего _TOTAL_ записей)",
                "search": 'Поиск',
                "infoEmpty": "Записи не найдены",
                "infoFiltered": "(отфильтровано из _MAX_ записей)",
                "paginate": {
                    "first": "Первая",
                    "last": "Последняя",
                    "next": "Следующая",
                    "previous": "Предыдущая"
                }
            }
        });

        $.fn.dataTable.tables({api: true})
            .columns.adjust();
        console.log("done init table");
        // .fixedColumns().relayout();
        // $($.fn.dataTable.tables( true ) ).css('width', '100%');
        // $($.fn.dataTable.tables( true ) ).DataTable().columns.adjust().draw();
    }, 500);

    setTimeout(function () {
        $($.fn.dataTable.tables(true)).DataTable().columns.adjust();
        $('#content').css('opacity', '1');
        $('#content').css('visibility', 'visible');
        $("#loadImg").hide();
    }, 500);
    //Изменяем максимальное количество символов в полях
    (function ($) {
        $.fn.inputFilter = function (inputFilter) {
            return this.on("input keydown keyup mousedown mouseup select contextmenu drop", function () {
                if (inputFilter(this.value)) {
                    this.oldValue = this.value;
                    this.oldSelectionStart = this.selectionStart;
                    this.oldSelectionEnd = this.selectionEnd;
                } else if (this.hasOwnProperty("oldValue")) {
                    this.value = this.oldValue;
                    this.setSelectionRange(this.oldSelectionStart, this.oldSelectionEnd);
                } else {
                    this.value = "";
                }
            });
        };
    }(jQuery));

    $("thead tr th:nth-child(14),tbody tr td:nth-child(14)").mousemove(function (eventObject) {
        $data_tooltip = 'Указаны начисления за период (с января по предыдущий месяц), аналогичный периоду в 2020 году';

        $("#tooltip").text($data_tooltip)
            .css({
                "top": eventObject.pageY + -40,
                "left": eventObject.pageX + 30
            })
            .show();

    }).mouseout(function () {

        $("#tooltip").hide()
            .text("")
            .css({
                "top": 0,
                "left": 0
            });
    });

    $(".floatTextBox").inputFilter(function (value) {
        return /^-?\d*[.]?\d*$/.test(value);
    });

    // alert(columns_text);
    let table = $('#resultsTable').DataTable();
    // console.log('Rows ' + table.rows().count() + ' are selected');

    // $('#resultsTable_length').append(rowCountContainer);


    //Получаем форму для редактирования холдинга
    $('#resultsTable tbody').on('dblclick', 'tr', function () {
        console.log(table.row(this).data()[0]);
        var url = $("#parametersLink").attr("href");
        var params = getUrlParams(url);
        $.ajax
        ({
            type: "GET",
            data: "holdingCode=" + table.row(this).data()[0] + "&parameterName=" + params["parameterName"] + "&parameterValue=" + params["parameterValue"],
            url: "/holding/showFormUpdate",
            success: function (html) {
                $('#singleHoldingBody').empty();
                $('#singleHoldingBody').html(html);
                $('#exampleModalLong').modal('show');
            },
            error: function (er) {
                console.log(er);
            },
        });
    });

    //Получаем форму для добавления нового холдинга
    $('#addNewHoldingButton').on('click', function () {
        var url = $("#parametersLink").attr("href");
        var params = getUrlParams(url);
        $.ajax
        ({
            type: "GET",
            data: "parameterName=" + params["parameterName"] + "&parameterValue=" + params["parameterValue"],
            url: "/holding/showAddForm",
            success: function (html) {
                $('#singleHoldingBody').empty();
                $('#singleHoldingBody').html(html);
                $('#exampleModalLong').modal('show');
            },
            error: function (er) {
                console.log(er);
            },
        });

    });

    $("div#exampleModalLong").on('submit', 'form#saveForm', function (e) {
        $.ajax
        ({
            type: "POST",
            data: $('#saveForm').serialize(),
            url: "/holding/saveHolding",
            success: function (html) {
                console.log("success")
            },
            error: function (er) {
                console.log("not success")
            },
        });
        $('#exampleModalLong').modal('toggle');
        event.preventDefault();
    });

    function getUrlParams(url) {
        var params = {};
        url.substring(1).replace(/[?&]+([^=&]+)=([^&]*)/gi,
            function (str, key, value) {
                params[key] = value;
            });
        return params;
    }

    $(document).on('hidden.bs.modal', '.modal', function () {
        $('.modal:visible').length && $(document.body).addClass('modal-open');
    });

});
