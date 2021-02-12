$(document).ready(function () {
    $("#updateUserRoles").on("click", function () {
        let users = [];
        $(".userData ").each(function () {
            let row = {};
            row["userName"] = $(this).attr("name");
            row["userRole"] = $(this).val();
            users.push(row);
        });
        let modalBody = $('<div id="modalContentPhone"></div>');
        $.ajax
        ({
            type: "POST",
            data: "data=" + JSON.stringify(users),
            dataType: 'text',
            url: "/holding2/updateUsersRoles",
            success: function (html) {
                $(".phoneModalContainer").css("display", "block")
                modalBody.append(html);
                $('#change_bodyPhone').html(modalBody);
                $('#changeModalPhone').modal('show');
            },
            error: function (html) {
                $(".phoneModalContainer").css("display", "block")
                modalBody.append(html);
                $('#change_bodyPhone').html(modalBody);
                $('#changeModalPhone').modal('show');
            }
        });
        return false;
    });
});
