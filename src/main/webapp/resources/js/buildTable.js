$(document).ready(function () {

    console.log("hello");

    $("#resultsTable").dataTable().fnDestroy();

    $('#resultsTable tr > *:nth-child(1)').hide();
    // $('#resultsTable thead tr th:last-child').html('Дата последнего изменения');
    /* $('#resultsTable tr > *:last-child').hide(); */

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

    /* $('table tbody td:nth-child(20)').each(function () {
        var cellText = $(this).html().trim().replaceAll(',', '<br/>');
        $(this).html(cellText);
        $(this).addClass('fixedWidth');
    }); */

    setTimeout(function () {
        $("#resultsTable").dataTable().fnDestroy();
        $('#resultsTable').DataTable({
            /*   initComplete: function () {
                  this.api().columns().every(function (d) {
                      var column = this;
                      var theadname = $("#resultsTable th").eq([d]).text();
                      if (theadname === 'КАМ, закрепленный за ИНН в регионе' || theadname === 'СМ, закрепленный за ИНН в регионе') {
                          console.log(theadname);
                          var select = $(
                              '<select class="form-control my-1"><option value="">' +
                              theadname +
                              "</option></select>"
                          ).appendTo('#filterContainer')
                              .on('change', function () {
                                  var val = $.fn.dataTable.util.escapeRegex(
                                      $(this).val()
                                  );
                                  column
                                      .search(val ? '^' + val + '$' : '', true, false)
                                      .draw();
                              });

                          column.data().unique().sort().each(function (d, j) {
                              select.append('<option value="' + d + '">' + d + '</option>')
                          });
                      }
                  });
              }, */
            "scrollX": true,
            "autoWidth": false,
            scrollY: "400px",
            fixedHeader: true,
            fixedColumns: true,
            paging: true,
            scrollCollapse: true,
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

        $.fn.dataTable.tables({visible: true, api: true})
            .columns.adjust()
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

});