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
<div class='container table-container'>

    <div class="row">
        <div class="col-10 offset-1">
            <div class="filialInfo">
                <p>${rf_name} (инн: ${inn} )</p>
            </div>
            <div class="row">
                <div id="filterContainer" class="col-3">
                </div>
            </div>
            <table id="resultsTable" class="table table-striped table-hover table-sm table-bordered">
                <thead>
                <tr>
                    <th>ИНН</th>
                    <th>Сумма(руб)</th>
                    <th>Период</th>
                    <th>Описание услуги</th>
                    <th>Тип услуги</th>
                    <th>МРФ</th>
                    <th>Регион</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="tempService" items="${services}">
                    <tr>
                        <td>${tempService.inn}</td>
                        <td>${tempService.charge_save}</td>
                        <td>${tempService.period}</td>
                        <td>${tempService.service}</td>
                        <td>${tempService.service2}</td>
                        <td>${tempService.mrf_name}</td>
                        <td>${tempService.rf_name}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
            <div>
                <c:url value="/DownloadServices" var="downloadService">
                    <c:param name="inn" value="${inn}"/>
                    <c:param name="rfName" value="${rf_name}"/>
                </c:url>
                <a class="rounded buttonCustom"
                <%--                    href="/holding/DownloadServices?inn=${inn}&amp;rfName=${rf_name}&amp;period=">Экспорт в Excel</a>--%>
                   href="${downloadService}">Экспорт в Excel</a>
            </div>
        </div>
    </div>
</div>

<script src="<c:url value="/resources/js/jquery.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/popper.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />" type="text/javascript"></script>
<script src="<c:url value="/resources/js/buildServiceTable.js" />" type="text/javascript"></script>
</body>