<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Услуги</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/starter-template/">
    <!-- Bootstrap core CSS -->
    <link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/dataTable.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/extendedOptionsVer2.css" />" rel="stylesheet">
    <link type="text/css" href="<c:url value="/resources/css/servicePage.css" />" rel="stylesheet">
</head>



<body>
${servicesPage}
<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/buildServiceTable.js" />" type="text/javascript"></script>
</body>