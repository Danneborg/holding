$(document).ready(function () {


    let tdElem = [
        $('table tbody tr td:nth-child(2)'),
    ];

    tdElem.forEach(function (item) {
        item.each(function () {
            var cellText = Number($(this).html().trim());
            $(this).html(cellText.toLocaleString().replace(',', '.'));
        });
    });

    $('#resultsTable').DataTable({
        initComplete: function () {
            this.api().columns().every(function (d) {
                var column = this;
                var theadname = $("#resultsTable th").eq([d]).text();
                if (theadname === 'Период') {
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
        },
        "scrollX": true,
        "autoWidth": false,
        scrollY: "600px",
        "pageLength": 50,
        fixedHeader: true,
        fixedColumns: true,
        paging: true,
        scrollCollapse: true,
        "columnDefs": [{
            "targets": [1],
            "searchable": false,
            "orderable": false,
            "visible": true
        }],
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

    //Запоминаем ссылку
    let linkHref = $("a.buttonCustom").attr("href");

    $("a.buttonCustom").attr("href", linkHref + "&period=");

    $("#filterContainer select").on('change', function (e) {
        let selectedPeriod = $(this).find(":selected").val().trim();
        if (selectedPeriod !== "") {
            $("a.buttonCustom").attr("href", linkHref + "&period=" + selectedPeriod);
        } else {
            console.log("here");
            $("a.buttonCustom").attr("href", linkHref+ "&period=");

        }
        console.log("|" + selectedPeriod + "|");
    });

    function getURLParameter(url, name) {
        return (RegExp(name + '=' + '(.+?)(&|$)').exec(url) || [, null])[1];
    }

});