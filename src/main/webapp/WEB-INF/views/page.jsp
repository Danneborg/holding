<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<link type="text/css" href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<link type="text/css" href="<c:url value="/resources/css/dataTable.css" />" rel="stylesheet">
<link type="text/css" href="<c:url value="/resources/css/extendedOptionsVer2.css" />" rel="stylesheet">

${page}

<script src="<c:url value="/resources/js/jquery.dataTables.min.js" />" type="text/javascript"></script>

<c:choose>
    <c:when test="${role == true}">
        <script src="<c:url value="/resources/js/holdingsDataManipulations.js" />" type="text/javascript"></script>
    </c:when>
    <c:otherwise>
        <script src="<c:url value="/resources/js/buildTable.js" />" type="text/javascript"></script>
    </c:otherwise>
</c:choose>

