<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Signin Template for Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <!-- Bootstrap core CSS -->
    <link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/bootstrapSignIn.css" />" rel="stylesheet">
</head>

<body class="text-center">
<form class="form-signin">
    <img src="<c:url value="/resources/images/logo1.png"/>" alt="logo">
    <h1 class="h3 mb-3 font-weight-normal">Назначение ролей</h1>
    <div class="container">
        ${formBody}
    </div>
    <button class="btn btn-lg btn-primary btn-block" id="updateUserRoles">Изменить данные</button>
</form>
<div class='phoneModalContainer'>
    <div class="modal fade" id="changeModalPhone" tabindex="-1" role="dialog" data-keyboard="true"
         aria-labelledby="changeLabelModalPhone" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id=\"changeLabelModalPhone\"></h5>
                    <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true" class=""></span>
                        <span class="sr-only">Close</span>
                    </button>
                </div>
                <div id="change_bodyPhone" class="modal-body">
                </div>
                <div class="modal-footer\">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/admin.js" />" type="text/javascript"></script>

</body>
</html>